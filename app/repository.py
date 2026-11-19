from threading import Lock

from .models import JobPost


class PortalRepo:
    """Keeps job posts in memory (they are lost when the app restarts)."""

    def __init__(self) -> None:
        self._lock = Lock()
        self._jobs: list[JobPost] = [
            JobPost(
                postid=1,
                postprofile="Java Developer",
                postdesc="Must have good experience in core Java and advanced Java",
                reqExperience=2,
                posttechstack=["Core Java", "J2EE", "Spring Boot", "Hibernate"],
            ),
            JobPost(
                postid=2,
                postprofile="Frontend Developer",
                postdesc="Experience in building responsive web applications using React",
                reqExperience=3,
                posttechstack=["HTML", "CSS", "JavaScript", "React"],
            ),
            JobPost(
                postid=3,
                postprofile="Data Scientist",
                postdesc="Strong background in machine learning and data analysis",
                reqExperience=4,
                posttechstack=["Python", "Machine Learning", "Data Analysis"],
            ),
        ]

    def all(self) -> list[JobPost]:
        with self._lock:
            return list(self._jobs)

    def get(self, postid: int) -> JobPost | None:
        with self._lock:
            return next((j for j in self._jobs if j.postid == postid), None)

    def add(self, profile: str, desc: str, experience: int, techstack: list[str]) -> JobPost:
        """Save a new job; the id is generated automatically."""
        with self._lock:
            next_id = max((j.postid for j in self._jobs), default=0) + 1
            job = JobPost(
                postid=next_id,
                postprofile=profile,
                postdesc=desc,
                reqExperience=experience,
                posttechstack=techstack,
            )
            self._jobs.append(job)
            return job
