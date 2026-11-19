Overview:
HelloJobportal is a website that helps people find jobs and companies hire new talent. It's made with Python and FastAPI, which are tools to build web applications. The site is easy to use and works well on phones and computers.

Key Features:

Posting Jobs: Companies can advertise job openings with details like experience needed and skills required.
Finding Jobs: People looking for work can search for jobs that match their skills and apply for them.
Works Everywhere: The website adjusts to fit different screen sizes, so it's easy to use on phones, tablets, and computers.
Easy Updates: The website can show different information without needing to reload the whole page, which makes it fast and smooth to use.
Nice Icons: We use special icons called FontAwesome to make the site look nicer and make it easier to navigate.
Runs Fast: The technical stuff behind the scenes is done using FastAPI, so everything works quickly and smoothly.
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
