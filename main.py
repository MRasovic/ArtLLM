from fastapi import FastAPI

art_llm = FastAPI()

@art_llm.get("/")
def read_root() -> dict:
    return {"Hello": "World"}

