from pydantic import BaseModel


class JobPost(BaseModel):
    """One job advertisement."""

    postid: int
    postprofile: str
    postdesc: str
    reqExperience: int
    posttechstack: list[str]
