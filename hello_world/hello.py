from fastapi import APIRouter

router = APIRouter()


@router.get("/hello")
def hello():
    return "Hello! this is a FastAPI application"


@router.get("/")
def home_page():
    return "this is the home page"
