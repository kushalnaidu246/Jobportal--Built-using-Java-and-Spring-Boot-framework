<%@page language="java" %>

<html>
    <head>
        <Title> Job portal</Title>
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
        <div class="hero-section">
            <div class="square-box">
               <a href="/alljob" ><h2>Find Jobs</h2> </a>
                
            </div>
            <div class="square-box">
              <a href="/addjob" > <h2>Post a Job</h2> </a>
            </div>
        </div>

        <footer>
            <p>&copy; 2024 Hello Job Portal. All rights reserved.</p>
        </footer>
        


    </body>
</html>