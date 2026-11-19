from .models import JobPost
from .repository import PortalRepo


class PortalService:
    def __init__(self, repo: PortalRepo) -> None:
        self.repo = repo

    def return_all_job_posts(self) -> list[JobPost]:
        return self.repo.all()

    def get_job_post(self, postid: int) -> JobPost | None:
        return self.repo.get(postid)

    def add_job_post(self, profile: str, desc: str, experience: int, techstack: list[str]) -> JobPost:
        return self.repo.add(profile.strip(), desc.strip(), experience, techstack)
