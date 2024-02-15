<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kushal.model.jobpost" %>
<%@ page import="com.kushal.repo.portalrepo" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="Design.css">
</head>
<body>
<header>
    <div class="logo-container"></div>
    <h3> Find your dream Job through our portal</h3>
    <div class="profile-logo"></div>
    <div class="user-account">
        <i class="fas fa-user"></i>
        <div> User</div>
    </div>
</header>

<div class="menu-icon"> <i class="fa-solid fa-bars"></i> </div>

        <button class="menu-button"> Menu</button>
      
        <div class="menu" id="menu">

            <div class="menu-content">
            
                <div class="menu-item">
                    <div class="menu-logo"><i class="fa-solid fa-house"></i></div>
                    <a href="/Home">Home</a>
                </div>
                <div class="menu-item">
                    <div class="menu-logo"><i class="fa-solid fa-layer-group"></i></div>
                    <a href="/alljob">All Jobs</a>
                </div>
                <div class="menu-item">
                    <div class="menu-logo"><i class="fa-solid fa-question"></i></div>
                    <a href="/faq">FAQ'S</a>
                </div>
                <div class="menu-item">
                    <div class="menu-logo"><i class="fa-solid fa-address-card"></i></div>
                    <a href="/about">About us</a>
                </div>
                <div class="menu-item">
                    <div class="menu-logo"><i class="fa-solid fa-address-book"></i></div>
                    <a href="/contact">Contact us</a>
                </div>
                
            </div>   
        </div>








<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Job Post List</h2>

    <div class="row row-cols-2">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col mb-4">
                <div class="card border-dark bg-dark text-white">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postprofile}</h5>
                        <p class="card-text">
                            <strong>Job-Id: </strong>
                            ${jobPost.postid}
                        </p>
                        <p class="card-text">
                            <strong>Description:</strong>
                            ${jobPost.postdesc}
                        </p>
                        <p class="card-text">
                            <strong>Experience Required:</strong>
                            ${jobPost.reqExperience} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack Required:</strong>
                            <ul>
                                <ab:forEach var="tech" items="${jobPost.posttechstack}">
                                    <li>${tech}</li>
                                </ab:forEach>
                            </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>
</body>
</html>
