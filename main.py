from fastapi import FastAPI
from hello_world import hello

app = FastAPI()
app.include_router(hello.router)
