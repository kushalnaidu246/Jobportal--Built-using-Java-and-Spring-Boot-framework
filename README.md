Overview:
HelloJobportal is a website that helps people find jobs and companies hire new talent. It's made with Python and FastAPI, which are tools to build web applications. The site is easy to use and works well on phones and computers.

Key Features:

Posting Jobs: Companies can advertise job openings with details like experience needed and skills required.
Viewing Jobs: Everyone can see the list of posted jobs.
Works Everywhere: The pages adjust to fit different screen sizes.
Info Pages: Home, FAQ, About us and Contact us pages.

Coming later: database storage, login and sign-up, searching for jobs, and applying for jobs.

Contribution:
We welcome help from anyone who wants to make HelloJobportal better. Whether you're good at making things look nice, adding new features, or making things run faster, we'd love to have your help!

Technologies Used:
Python 3.10+
FastAPI (web framework)
Uvicorn (server)
Jinja2 (HTML templates)
HTML/CSS
FontAwesome (icons)

How to run:
1. pip install -r requirements.txt
2. uvicorn app.main:app --reload
3. Open http://127.0.0.1:8000
4. Interactive API docs are at http://127.0.0.1:8000/docs

How to test:
pytest

Note: jobs are kept in memory, so new posts are lost when the app restarts.
