from itertools import chain
from ekorpkit import eKonf
from tokenizers import Tokenizer
from transformers import PreTrainedTokenizerFast, AutoTokenizer
from tokenizers.processors import BertProcessing
import multiprocessing
from datasets import load_dataset


num_proc = multiprocessing.cpu_count()
num_proc = 100


eKonf.setLogger("INFO")
print("version:", eKonf.__version__)

workspace_dir = "/content/drive/MyDrive/workspace"
project_name = "ekorpkit-book"
project_dir = eKonf.set_workspace(workspace=workspace_dir, project=project_name)
print("project_dir:", project_dir)


tokenizer_path = "tokenizers/enko_wiki/enko_wiki_unigram_huggingface_vocab_30000.json"
tokenizer_path = project_dir + "/" + tokenizer_path
context_length = 512


unigram_tokenizer = Tokenizer.from_file(tokenizer_path)
print(f"Vocab size: {unigram_tokenizer.get_vocab_size()}")
unigram_tokenizer.post_processor = BertProcessing(
    ("</s>", unigram_tokenizer.token_to_id("</s>")),
    ("<s>", unigram_tokenizer.token_to_id("<s>")),
)

tokenizer = PreTrainedTokenizerFast(
    tokenizer_object=unigram_tokenizer,
    truncation=True,
    max_length=context_length,
    return_length=True,
    bos_token="<s>",
    eos_token="</s>",
    unk_token="<unk>",
    pad_token="<pad>",
    cls_token="<cls>",
    sep_token="<sep>",
    mask_token="<mask>",
    padding_side="right",
)

print(f"is_fast: {tokenizer.is_fast}")
print(f"Vocab size: {tokenizer.vocab_size}")
print(tokenizer("Hello, my dog is cute"))
tokenizer.save_pretrained(project_dir + "/tokenizers/enko_wiki")
tokenizer = AutoTokenizer.from_pretrained(project_dir + "/tokenizers/enko_wiki")

data_dir = project_dir + "/data/tokenizers/enko_filtered_chunk"

dataset = load_dataset("text", data_dir=data_dir, split="train")

text_column = "text"


def tokenize(element):
    outputs = tokenizer(
        element[text_column],
        truncation=True,
        max_length=context_length,
        return_special_tokens_mask=True,
    )
    return outputs


# preprocess dataset
tokenized_dataset = dataset.map(
    tokenize, batched=True, remove_columns=[text_column], num_proc=num_proc
)
print(tokenized_dataset.features)

# Main data processing function that will concatenate all texts from our dataset and generate chunks of
# max_seq_length.
def group_texts(examples):
    # Concatenate all texts.
    concatenated_examples = {k: list(chain(*examples[k])) for k in examples.keys()}
    total_length = len(concatenated_examples[list(examples.keys())[0]])
    # We drop the small remainder, we could add padding if the model supported it instead of this drop, you can
    # customize this part to your needs.
    if total_length >= context_length:
        total_length = (total_length // context_length) * context_length
    # Split by chunks of max_len.
    result = {
        k: [t[i : i + context_length] for i in range(0, total_length, context_length)]
        for k, t in concatenated_examples.items()
    }
    return result


tokenized_dataset = tokenized_dataset.map(group_texts, batched=True, num_proc=num_proc)

# shuffle dataset
tokenized_dataset = tokenized_dataset.shuffle(seed=1234)

print(f"the dataset contains in total {len(tokenized_dataset)*context_length} tokens")
# the dataset contains in total 137816832 tokens
dataset_dir = project_dir + "/data/tokenized_datasets/enko_filtered"

tokenized_dataset.save_to_disk(dataset_dir)
