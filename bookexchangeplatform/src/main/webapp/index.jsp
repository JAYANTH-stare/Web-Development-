<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>B O O K S W A P</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="uid.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%
    // Any server-side logic can be added here
%>
<!--header design-->
<header class="header">
    <a href="#" class="logo">B O O K<span>  S W A P </span></a>
    <i class="fas fa-bars" id="menu-icon"></i>

    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#about" >ABOUT US?</a>
        <a href="#services"  >Why we're Unique</a>
        <a href="#portfolio"  >What you get</a>
        <a href="#contact"  >Contact</a>
    </nav>
</header>
<section class="home" id="home">
    <div class="home-content">

        <h3 style="color: white;" >welcome to </h3>
        <p style="color: aliceblue;font-size: 100px;">Peer To Peer<span> Marketing Interface</span></p>
        <p style="color: aliceblue; font-size: 20px;">the ultimate destination for students at Amrita to buy and sell textbooks hassle-free. Say goodbye to overpriced textbooks and hello to a vibrant marketplace where students can connect, exchange, and save on their course materials.</p>
        <div class="social-media">
            <a href="#instagram" onclick="openInsta()"><i class="fab fa-instagram"></i></a>
            <a href="#facebook" onclick="openFacebook()"><i class="fab fa-facebook"></i></a>
            <a href="#linked-in" onclick="openLinkedIn()"><i class="fab fa-linkedin"></i></a>
            <a href="#git-hub" onclick="openGitHub()"><i class="fab fa-github"></i></a>

        </div>
        <a href="signinPage.html" class="btn">Lets " S W A P "</a>
    </div>
</section>

<section class="about" id="about">
    <div class="about-img">

    </div>
    <div class="about-content">
        <h1 style="color: white;" class="heading">A B O U T   -   U S  </h1>

        <p style ="color: aliceblue; font-size: 150px;" >Seamless + Simple + Smooth equals to " <span>us </span> " </p>
        <h3 style="color: aliceblue;">Wanna Know More ??</h3>
        <a href="Authentication.jsp" class="btn">About Us</a>
    </div>
</section>
<section class="services" id="services">
    <h2 class="heading" style="color: aliceblue;" >what's so <span> U N I Q U E ?</span></h2>
    <br>
    <br>
    <div class="services-contents">
        <div class="services-box">
            <i class="fa-solid fa-person"></i>
            <h3>Peer Powered</h3>
            <p style="color: aliceblue;">Harnesses the power of student networks for seamless transactions, streamlining the textbook exchange process.</p>
            <a href="Authentication.jsp" class="btn">Read more</a>
        </div>
        <div class="services-box">
            <i class="fa-solid fa-lightbulb"></i>
            <h3>Innovative</h3>
            <p style="color: aliceblue;">Introduces new solutions to reduce textbook costs, ensuring accessibility to course materials without financial strain.</p>
            <a href="Authentication.jsp" class="btn">Read more</a>
        </div>
        <div class="services-box">
            <i class="fa-solid fa-mobile"></i>
            <h3>Interactive</h3>
            <p style="color: aliceblue;">Fosters engagement and participation among students, making textbook acquisition and disposal easier and more inclusive.</p>
            <a href="Authentication.jsp" class="btn">Read more</a>
        </div>
        <div class="services-box">
            <i class="fa-solid fa-wand-magic-sparkles"></i>
            <h3>Revolutionary</h3>
            <p style="color: aliceblue;"> the traditional textbook market by offering a convenient and user-friendly platform for buying and selling course materials.</p>
            <a href="Authentication.jsp" class="btn">Read more</a>
        </div>
        <div class="services-box">
            <i class="fa-brands fa-pagelines"></i>
            <h3>Sustainability</h3>
            <p style="color: aliceblue;">Introduces eco-friendly practices by promoting the reuse and recycling of textbooks, contributing to environmental conservation efforts on campus.</p>
            <a href="Authentication.jsp" class="btn">Read more</a>
        </div>
        <div class="services-box">
            <i class="fa-regular fa-clock"></i>
            <h3>Time Saving</h3>
            <p style="color: aliceblue;"> students time by eliminating the need to navigate multiple platforms or visit physical bookstores, streamlining the textbook acquisition process.</p>
            <a href="Authentication.jsp" class="btn">Read more</a>
        </div>
    </div>
</section>
<section class="portfolio" id="portfolio">
    <h3 style="color: aliceblue;" class="heading">Our <span>Services</span></h3>
    <div class="portfolio-cont">
        <div class="portfolio-box">
            <a href="Authentication.jsp">
                <img src="TEXTBOOK.jpg" alt="">
                <div class="portfolio-layers">
                    <h2>Text Books</h2>
                    <p>Get textbooks and guides from your seniors now !</p>
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </div>
            </a>
        </div>
        <div class="portfolio-box">
            <a href="Authentication.jsp">
                <img src="NOTEBOOK.jpg" alt="">
                <div class="portfolio-layers">
                    <h2>Notes</h2>
                    <p>hand written notes from all subjects , at your finger tips</p>
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </div>
            </a>
        </div>
        <div class="portfolio-box">
            <a href="Authentication.jsp">
                <img src="QUESTIONPAPER.jpg" alt="">
                <div class="portfolio-layers">
                    <h2>PY Question Papers</h2>
                    <p>Get all kinds of question papers and worksheets you like .</p>
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </div>
            </a>
        </div>
        <div class="portfolio-box">
            <a href="Authentication.jsp">
                <img src="JOURNAL.jpg" alt="">
                <div class="portfolio-layers">
                    <h2>Guides and Journals</h2>
                    <p>.</p>
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </div>
            </a>
        </div>
        <div class="portfolio-box">
            <a href="Authentication.jsp">
                <img src="5.jpg" alt="">
                <div class="portfolio-layers">
                    <h2>YET TO BE DECIDED</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </div>
            </a>
        </div>
        <div class="portfolio-box">
            <a href="Authentication.jsp">
                <img src="6.jpg" alt="">
                <div class="portfolio-layers">
                    <h2>YET TO BE DECIDED</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </div>
            </a>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

</section>
<section class="contact" id="contact">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <p  style="color: aliceblue;font-size: 75px;" class="heading"><span>Contact</span> Us</p>
    <form action="#">
        <div class="input-box">
            <input type="text" placeholder="Name">
            <input type="email" placeholder="email Address">
        </div>
        <div class="input-box">
            <input type="number" placeholder="Mobile Number">
            <input type="text" placeholder="email Holder">
        </div>
        <textarea name="" id="" cols="30" rows="10" placeholder="enter text"></textarea>
        <input type="submit" value="send message" class="btn">
    </form>
</section>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer class="footer">
    <div class="footer-text">
        <p>&copy; 2024 B O O K <span> S W A P</span>. All rights reserved.</p>
    </div>
    <div class="footer-icon">
        <a href="#home"><i class="fa-solid fa-arrow-up"></i></a>
    </div>
</footer>
<script src="uid js.js"></script>
</body>
</html>
