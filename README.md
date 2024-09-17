# QnA-PDF-RAG-LangChain
Chat with your PDF files and ask the most specific questions about them!

![image]([https://github.com/yasinda-s/QnA-PDF-RAG-LangChain/assets/60426941/c7173672-8cc0-4afd-bec0-877d6180f09c](https://drive.google.com/file/d/1M4gj2-cl4NRW8rLyTqwe2ZcCevdE3Dlx/view?usp=drive_link))

## Features

- Upload a PDF and chat with your PDF!
- Uses free embedding model (all-MiniLM-l6-v2) from hugging face to create embeddings for chunks in the vector store/database.
- As a user asks for a question, the vector store is used as a retreiver, to find the ideal emebeddings based on similarity. 
- The RAG chain uses the sources along with the prompt template to generate a human like response to the user's question using another free model (LLM: Mixtral-8x7B-Instruct-v0.1)

## How to run

```sh
Retrieve a HuggingFace API Key (or any other API Keys based on the models you use: OpenAI, Gemini, etc).
To get the HuggingFace key, visit https://huggingface.co/settings/tokens.
Assign your key as INFERENCE_API_KEY in a keys.py file.

(If you are creating a new venv) :
conda create -n rag python=3.10
conda activate rag

pip install -r requirements.txt
streamlit run streamlit-main.py
```
## For Docker set up please follow steps
```sh
step 1: docker build -t my-streamlit-app .

step 2:docker run -p 8501:8501 my-streamlit-app


```
## Use Jupyter Notebook 
```sh
This expanded README includes comprehensive instructions for both local and Docker-based setups, as well as information about the Jupyter notebook for understanding the implementation.
```

