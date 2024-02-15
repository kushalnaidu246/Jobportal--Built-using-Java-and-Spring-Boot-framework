<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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



        <main>
            <div class="contact-info">
                <h2>Get in Touch</h2>
                <p>If you have any questions or feedback, feel free to contact us using the information below:</p>
                <ul>
                    <li><strong>Email:</strong> <a href="mailto:contact@HelloJobPortal.com">contact@HelloJobPortal.com</a></li>
                    <li><strong>Phone:</strong> +91 234-567-890</li>
                    <li><strong>Address:</strong> 123 Main St, Hyderabad, India</li>
                </ul>
            </div>
    
            <div class="contact-form">
                <h2>Contact Form</h2>
                <form action="#" method="POST"> <!-- Specify action and method -->
                    <label for="name">Your Name:</label>
                    <input type="text" id="name" name="name" required>
    
                    <label for="email">Your Email:</label>
                    <input type="email" id="email" name="email" required>
    
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
    
                    <button type="submit">Submit</button>
                </form>
            </div>
        </main>
    
        <footer>
            <p>&copy; 2024 Hello Job Portal. All rights reserved.</p>
        </footer>
    
        
    </body>
</html>