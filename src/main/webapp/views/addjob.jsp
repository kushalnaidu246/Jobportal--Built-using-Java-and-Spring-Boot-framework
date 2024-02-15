<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kushal.model.jobpost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>

<html>
    <head>
        <titile>

        </titile>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       
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
            <div class="card" > 
                <h2>Post A New Job</h2>
                <form action="Handleform" method="post" id="Jobpostform">
					<div class="form-group">
						<label for="postid">Job ID</label>
						<input type="text" id="postid" name="postid" required>
					</div>
				
					<div class="form-group">
						<label for="postProfile">Post Profile</label>
						<input type="text" id="postprofile" name="postprofile" required>
					</div>
				
					<div class="form-group">
						<label for="postdesc">Post Description</label>
						<textarea id="postdesc" name="postdesc" rows="4" required></textarea>
					</div>
				
					<div class="form-group">
						<label for="reqExperience">Required Experience</label>
						<input type="number" id="reqExperience" name="reqExperience" required>
					</div>
				
					<div class="form-group">
						<label for="posttechStack">Tech Stack</label>
						<select multiple class="form-select" id="posttechStack" name="posttechstack" required>
										<!-- Add options dynamically from your backend or provide static options -->
										<option value="Java">Java</option>
										<option value="JavaScript">JavaScript</option>
										<option value="Swift">Swift</option>
										<option value="TypeScript">TypeScript</option>
										<option value="Go">Go</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Rust">Rust</option>
										<option value="PHP">PHP</option>
										<option value="HTML5">HTML5</option>
										<option value="CSS3">CSS3</option>
										<option value="GraphQL">GraphQL</option>
										<option value="Raspberry Pi">Raspberry Pi</option>
										<option value="Arduino">Arduino</option>
										<option value="IoT (Internet of Things)">IoT (Internet
											of Things)</option>
										<option value="Apache Kafka">Apache Kafka</option>
										<option value="Elasticsearch">Elasticsearch</option>
										<option value="Unity">Unity</option>
										<option value="Game Development">Game Development</option>
										<option value="Vue.js">Vue.js</option>
										<option value="Angular">Angular</option>
										<option value="React Native">React Native</option>
										<option value="Flutter">Flutter</option>
										<option value="Node.js">Node.js</option>
										<option value="Express.js">Express.js</option>
										<option value="Django">Django</option>
										<option value="Flask">Flask</option>
										<option value="Ruby on Rails">Ruby on Rails</option>
										<option value="Laravel">Laravel</option>
										<option value="TensorFlow">TensorFlow</option>
										<option value="PyTorch">PyTorch</option>
										<option value="Kubernetes">Kubernetes</option>
										<option value="Docker">Docker</option>
										<option value="Jenkins">Jenkins</option>
										<option value="AWS (Amazon Web Services)">AWS (Amazon
											Web Services)</option>
										<option value="Azure">Azure</option>
										<option value="Google Cloud">Google Cloud</option>
										<option value="DevOps">DevOps</option>
										<option value="Blockchain">Blockchain</option>
										<option value="Machine Learning">Machine Learning</option>
										<option value="Artificial Intelligence">Artificial
											Intelligence</option>
										<option value="Cybersecurity">Cybersecurity</option>
										<option
											value="CISSP (Certified Information Systems Security Professional)">CISSP
											(Certified Information Systems Security Professional)</option>
										<option value="CompTIA Security+">CompTIA Security+</option>
										<option value="Certified Ethical Hacker (CEH)">Certified
											Ethical Hacker (CEH)</option>
										<option value="Scrum">Scrum</option>
										<option value="Agile">Agile</option>
										<option value="Kanban">Kanban</option>
										<option value="GraphQL">GraphQL</option>
										<option value="Vue.js">Vue.js</option>
										<option value="Angular">Angular</option>
										<option value="React Native">React Native</option>
										<option value="Flutter">Flutter</option>
										<option value="Node.js">Node.js</option>
										<option value="Express.js">Express.js</option>
										<option value="Django">Django</option>
										<option value="Flask">Flask</option>
										<option value="Ruby on Rails">Ruby on Rails</option>
										<option value="Laravel">Laravel</option>
										<option value="TensorFlow">TensorFlow</option>
										<option value="PyTorch">PyTorch</option>
										<option value="Kubernetes">Kubernetes</option>
										<option value="Docker">Docker</option>
										<option value="Jenkins">Jenkins</option>
										<option value="AWS (Amazon Web Services)">AWS (Amazon
											Web Services)</option>
										<option value="Azure">Azure</option>
										<option value="Google Cloud">Google Cloud</option>
										<option value="DevOps">DevOps</option>
										<option value="Blockchain">Blockchain</option>
										<option value="Machine Learning">Machine Learning</option>
										<option value="Artificial Intelligence">Artificial
											Intelligence</option>
										<option value="Cybersecurity">Cybersecurity</option>
										<option
											value="CISSP (Certified Information Systems Security Professional)">CISSP
											(Certified Information Systems Security Professional)</option>
										<option value="CompTIA Security+">CompTIA Security+</option>
										<option value="Certified Ethical Hacker (CEH)">Certified
											Ethical Hacker (CEH)</option>
										<option value="Scrum">Scrum</option>
										<option value="Agile">Agile</option>
										<option value="Kanban">Kanban</option>
										<option value="GraphQL">GraphQL</option>
										<option value="Raspberry Pi">Raspberry Pi</option>
										<option value="Arduino">Arduino</option>
										<option value="IoT (Internet of Things)">IoT (Internet
											of Things)</option>
										<option value="Apache Kafka">Apache Kafka</option>
										<option value="Elasticsearch">Elasticsearch</option>
										<option value="Unity">Unity</option>
										<option value="Game Development">Game Development</option>
										<option value="Swift">Swift</option>
										<option value="TypeScript">TypeScript</option>
										<option value="Go">Go</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Rust">Rust</option>
										<option value="PHP">PHP</option>
										<option value="HTML5">HTML5</option>
										<option value="CSS3">CSS3</option>
										<option value="GraphQL">GraphQL</option>
										<option value="Raspberry Pi">Raspberry Pi</option>
										<option value="Arduino">Arduino</option>
										<option value="IoT (Internet of Things)">IoT (Internet
											of Things)</option>
										<option value="Apache Kafka">Apache Kafka</option>
										<option value="Elasticsearch">Elasticsearch</option>
										<option value="Unity">Unity</option>
										<option value="Game Development">Game Development</option>
	
                        </select>
                    </div>

                    <button type="submit">Submit</button>



                </form>
            </div>
        </div>

       
        
    </body>
</html>