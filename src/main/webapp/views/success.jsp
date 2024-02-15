<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kushal.model.jobpost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<%@ page import="com.kushal.model.jobpost" %>
<%@ page import="com.kushal.repo.portalrepo" %>

<html>
    <head>
        <title> Success Page </title>
        <link rel="stylesheet" href="Design.css">

    </head>

    <body>
        <header> 
            <div class="logo-container">
           
            </div>
            <h3> Find your dream Job through our portal</h3>
            <div class="profile-logo"> </div>
            <div class="user-account">
                <i class="fa-solid fa-user"></i>
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


        <% 
           jobpost myJobPost = (jobpost) request.getAttribute("jobPost");
           %>
       
           
            <div class="container">
                <div class="mainblock">
                    <h2>Job Post Details</h2>
                    <div class="card-board">
                        <h5 class="card-title">${jobPost.postprofile}</h5>
                        <p class="card-text">
                            <strong>Job-Id:</strong>
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
                                <c:forEach var="tech" items="${jobPost.posttechstack}">
                                    <li>${tech}</li>
                                </c:forEach>
                            </ul>
                        </p>
                        
                    </div>
                </div>
            </div>
       
        
        
    </body>
</html>