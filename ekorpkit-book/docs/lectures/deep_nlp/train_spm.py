from ekorpkit import eKonf
from datasets import Dataset
from ekorpkit.tokenizers.spm import train_spm


eKonf.setLogger("INFO")
print("version:", eKonf.__version__)

project_dir = eKonf.set_workspace(
    workspace="/content/drive/MyDrive/workspace/", project="ekorpkit-book"
)
print("project_dir:", project_dir)

data = eKonf.load_data("enko_filtered.parquet", project_dir + "/data")
text_column = "text"
raw_dataset = Dataset.from_pandas(data[[text_column]])

# shuffle the dataset
raw_dataset = raw_dataset.shuffle(seed=42)

input_dir = project_dir + "/data/tokenizers/enko_filtered_chunk"
output_dir = project_dir + "/data/tokenizers/enko_filtered_samples"
sampled_file = output_dir + "/sampled_sentences.txt"


bpe_model_path = train_spm(
    model_prefix="enko_wiki",
    input=sampled_file,
    output_dir=project_dir + "/tokenizers/spm",
    model_type="bpe",
    vocab_size=30000,
    character_coverage=0.9995,
    num_threads=128,
)
print("bpe_model_path:", bpe_model_path)
