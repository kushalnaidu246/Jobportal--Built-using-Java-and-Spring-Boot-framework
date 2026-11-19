from fastapi.testclient import TestClient

from app.main import app

client = TestClient(app)


def test_pages_load():
    for path in ["/", "/Home", "/alljob", "/addjob", "/faq", "/about", "/contact"]:
        assert client.get(path).status_code == 200, path


def test_static_files_served():
    assert client.get("/static/Design.css").status_code == 200


def test_alljob_shows_sample_jobs():
    html = client.get("/alljob").text
    assert "Java Developer" in html and "Data Scientist" in html


def test_add_job_then_listed():
    resp = client.post(
        "/Handleform",
        data={
            "postprofile": "QA Engineer",
            "postdesc": "Writes tests",
            "reqExperience": "1",
            "posttechstack": ["Python", "Docker"],
        },
        follow_redirects=False,
    )
    assert resp.status_code == 303
    assert "QA Engineer" in client.get(resp.headers["location"]).text
    assert "QA Engineer" in client.get("/alljob").text


def test_html_is_escaped():
    resp = client.post(
        "/Handleform",
        data={
            "postprofile": "<script>alert(1)</script>",
            "postdesc": "x",
            "reqExperience": "1",
            "posttechstack": ["Java"],
        },
        follow_redirects=True,
    )
    assert "<script>alert(1)</script>" not in resp.text
    assert "&lt;script&gt;" in resp.text


def test_invalid_form_rejected():
    resp = client.post(
        "/Handleform",
        data={"postprofile": "A", "postdesc": "B", "reqExperience": "abc", "posttechstack": ["Java"]},
    )
    assert resp.status_code == 422


def test_unknown_job_404():
    assert client.get("/success/9999").status_code == 404


def test_contact_form_flow():
    resp = client.post(
        "/contact",
        data={"name": "Sam", "email": "sam@example.com", "message": "Hi"},
        follow_redirects=True,
    )
    assert resp.status_code == 200
    assert "Your message was sent" in resp.text
    assert "Your message was sent" not in client.get("/contact").text


def test_contact_rejects_bad_email():
    resp = client.post("/contact", data={"name": "Sam", "email": "nope", "message": "Hi"})
    assert resp.status_code == 422


def test_friendly_404_page():
    resp = client.get("/does-not-exist")
    assert resp.status_code == 404
    assert "Page not found" in resp.text and "<html" in resp.text
