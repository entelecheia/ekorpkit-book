from ekorpkit import eKonf
from transformers import AutoTokenizer, AutoConfig, AutoModelForMaskedLM
from transformers import BertForMaskedLM
from transformers import DataCollatorForLanguageModeling
from datasets import Dataset
from transformers import Trainer, TrainingArguments
from accelerate import Accelerator


eKonf.setLogger("INFO")
print("version:", eKonf.__version__)

workspace_dir = "/content/drive/MyDrive/workspace"
project_name = "ekorpkit-book"
project_dir = eKonf.set_workspace(workspace=workspace_dir, project=project_name)
print("project_dir:", project_dir)


tk_path = project_dir + "/tokenizers/enko_wiki"

# Load codeparrot tokenizer trained for Python code tokenization
tokenizer = AutoTokenizer.from_pretrained(tk_path)

# Configuration
config_kwargs = {
    "vocab_size": len(tokenizer),
    "pad_token_id": tokenizer.pad_token_id,
    # "torch_dtype": "float16",
}

# # Load model with config and push to hub
config = AutoConfig.from_pretrained("bert-base-uncased", **config_kwargs)
model = AutoModelForMaskedLM.from_config(config)

model_path = project_dir + "/models/enko_wiki_bert_base_uncased"
model.save_pretrained(model_path)


model = BertForMaskedLM(config)
model_size = sum(t.numel() for t in model.parameters())
print(f"BERT size: {model_size/1000**2:.1f}M parameters")

tokenizer.pad_token = tokenizer.eos_token
data_collator = DataCollatorForLanguageModeling(
    tokenizer, mlm=True, mlm_probability=0.15
)

dataset_dir = project_dir + "/data/tokenized_datasets/enko_filtered"

tokenized_dataset = Dataset.load_from_disk(dataset_dir)

out = data_collator([tokenized_dataset[i] for i in range(5)])
for key in out:
    print(f"{key} shape: {out[key].shape}")


args = TrainingArguments(
    output_dir=model_path,
    per_device_train_batch_size=32,
    per_device_eval_batch_size=32,
    evaluation_strategy="steps",
    eval_steps=5_000,
    logging_steps=5_000,
    gradient_accumulation_steps=8,
    num_train_epochs=10,
    weight_decay=0.1,
    warmup_steps=1_000,
    lr_scheduler_type="cosine",
    learning_rate=5e-4,
    save_steps=5_000,
    fp16=True,
    push_to_hub=False,
)

trainer = Trainer(
    model=model,
    tokenizer=tokenizer,
    args=args,
    data_collator=data_collator,
    train_dataset=tokenized_dataset,
)


accelerator = Accelerator()
acc_state = {str(k): str(v) for k, v in accelerator.state.__dict__.items()}
device = accelerator.device

print(f"device: {device}")

trainer = accelerator.prepare(trainer)

trainer.train()

trainer.save_model(model_path)
