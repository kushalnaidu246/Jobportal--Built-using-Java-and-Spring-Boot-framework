from pathlib import Path
from typing import Annotated

from fastapi import Depends, FastAPI, Form, HTTPException, Request
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.staticfiles import StaticFiles
from starlette.exceptions import HTTPException as StarletteHTTPException
from fastapi.templating import Jinja2Templates

from .repository import PortalRepo
from .service import PortalService

BASE_DIR = Path(__file__).parent

app = FastAPI(title="HelloJobportal")
app.mount("/static", StaticFiles(directory=BASE_DIR / "static"), name="static")
templates = Jinja2Templates(directory=BASE_DIR / "templates")  # autoescape on: safe from XSS

_service = PortalService(PortalRepo())


def get_service() -> PortalService:
    return _service


Service = Annotated[PortalService, Depends(get_service)]

TECH_STACK_OPTIONS = [
    "Java", "JavaScript", "TypeScript", "Python", "Go", "Kotlin", "Swift", "Rust", "PHP",
    "HTML5", "CSS3", "GraphQL", "Raspberry Pi", "Arduino", "IoT (Internet of Things)",
    "Apache Kafka", "Elasticsearch", "Unity", "Game Development", "Vue.js", "Angular",
    "React Native", "Flutter", "Node.js", "Express.js", "Django", "Flask", "Ruby on Rails",
    "Laravel", "TensorFlow", "PyTorch", "Kubernetes", "Docker", "Jenkins",
    "AWS (Amazon Web Services)", "Azure", "Google Cloud", "DevOps", "Blockchain",
    "Machine Learning", "Artificial Intelligence", "Cybersecurity",
    "CISSP (Certified Information Systems Security Professional)", "CompTIA Security+",
    "Certified Ethical Hacker (CEH)", "Scrum", "Agile", "Kanban",
]


def page(request: Request, name: str, **context) -> HTMLResponse:
    return templates.TemplateResponse(request, name, context)


@app.get("/", response_class=HTMLResponse)
@app.get("/Home", response_class=HTMLResponse)
def home(request: Request):
    return page(request, "home.html")


@app.get("/addjob", response_class=HTMLResponse)
def add_job(request: Request):
    return page(request, "addjob.html", tech_options=TECH_STACK_OPTIONS)


@app.post("/Handleform")
def handle_add_job_form(
    service: Service,
    postprofile: Annotated[str, Form(min_length=1, max_length=100)],
    postdesc: Annotated[str, Form(min_length=1, max_length=2000)],
    reqExperience: Annotated[int, Form(ge=0, le=60)],
    posttechstack: Annotated[list[str], Form(min_length=1)],
):
    job = service.add_job_post(postprofile, postdesc, reqExperience, posttechstack)
    # Redirect after saving, so refreshing the page does not post the job twice.
    return RedirectResponse(f"/success/{job.postid}", status_code=303)


@app.get("/success/{postid}", response_class=HTMLResponse)
def success(request: Request, postid: int, service: Service):
    job = service.get_job_post(postid)
    if job is None:
        raise HTTPException(status_code=404, detail="Job post not found")
    return page(request, "success.html", jobPost=job)


@app.get("/alljob", response_class=HTMLResponse)
def view_jobs(request: Request, service: Service):
    return page(request, "alljob.html", jobPosts=service.return_all_job_posts())


@app.get("/faq", response_class=HTMLResponse)
def faq(request: Request):
    return page(request, "faq.html")


@app.get("/contact", response_class=HTMLResponse)
def contact(request: Request, sent: int = 0):
    return page(request, "contact.html", sent=bool(sent))


@app.post("/contact")
def send_contact(
    service: Service,
    name: Annotated[str, Form(min_length=1, max_length=100)],
    email: Annotated[str, Form(min_length=3, max_length=200, pattern=r"^[^@\s]+@[^@\s]+\.[^@\s]+$")],
    message: Annotated[str, Form(min_length=1, max_length=2000)],
):
    service.add_message(name.strip(), email.strip(), message.strip())
    return RedirectResponse("/contact?sent=1", status_code=303)


@app.get("/about", response_class=HTMLResponse)
def about(request: Request):
    return page(request, "about.html")


@app.exception_handler(StarletteHTTPException)
async def http_error(request: Request, exc: StarletteHTTPException):
    """Show a friendly HTML page for 404 and other HTTP errors."""
    text = "Page not found" if exc.status_code == 404 else str(exc.detail)
    return templates.TemplateResponse(
        request, "error.html", {"code": exc.status_code, "text": text}, status_code=exc.status_code
    )
