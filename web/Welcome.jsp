<%-- 
    Document   : Welcome
    Created on : Sep 28, 2021, 7:59:12 AM
    Author     : Umutesi Grace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
  <link href="/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">
 
  <!-- OWN CSS -->
  <style>
      @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:wght@100;300;400;500;700;900&display=swap');

*,
*:after,
*:before {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

:active,
:hover,
:focus {
  outline: 0 !important;
  outline-offset: 0;
}

a,
a:hover {
  text-decoration: none;
}

a:hover {
  color:  orange;
}

ul,
ol {
  margin: 0;
  padding: 0;
}
html {
  scroll-behavior: smooth;
}

body {
  font-family: 'Roboto', sans-serif;
  font-size: 100%;
  font-weight: 400;
}

::-webkit-scrollbar {
  width: 0.625rem;
} 
::-webkit-scrollbar-track {
  background: #fff; 
} 
::-webkit-scrollbar-thumb {
  background:darkorange; 
} 

h1 {
  font-size: 3rem;
  font-weight: 900;
  margin-bottom: 3rem;
  color: orange;
  padding-bottom: 15px;
}

h2 {
  font-weight: 700;
  font-size: 2.45rem;
  text-transform: capitalize;
  font-family: 'Quicksand', sans-serif;
  color: orange;
  line-height: 3rem;

}

h4 {
  color: #43121d;
  font-family: 'Quicksand', sans-serif;
  text-transform: capitalize;
  font-size: 18px;
  font-weight: 800;
  margin-bottom: 0.5rem;
}

h5 {
  color: orange;
  text-transform: capitalize;
  font-family: 'Quicksand', sans-serif;
  font-size: 1rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
}

p {
  font-size: 1rem;
  color: whitesmoke;
  font-weight: 400;
  line-height: 1.75rem;
  letter-spacing: 1px;
}

.main-btn {
  display: inline-block;
  padding: 0.625rem 1.875rem;
  line-height: 1.5625rem;
  background-color: orange;
  border: 0.1875rem solid orange;
  color: #fff;
  font-size: 0.9375rem;
  font-weight: 600;
  text-transform: capitalize;
  box-shadow: 0px 2px 10px -1px rgb(0 0 0 / 19%);
  -webkit-transition: all .4s ease-out 0s;
  -o-transition: all .4s ease-out 0s;
  -moz-transition: all .4s ease-out 0s;
  transition: all .4s ease-out 0s;
}
.navigation-wrap{
  position:fixed;
  width:100%;
  left:0;
  z-index:1000;
  -webkit-transition:all 0.3s ease-out;
  transition:all 0.3s ease-out;
} 
.navigation-wrap .nav-item{
  padding:0 0.625rem;
  transition:all 200ms linear;
}
.navbar-toggler:focus{
  outline:unset;
  border:unset;
  box-shadow: none;
}
.nav-link{
  font-size:0.9375rem;
  font-weight: 600;
  text-transform: capitalize;
  color:orange;
  letter-spacing: 1px;
}
.navigation-wrap .main-btn{
  padding:0.3125rem 1.4375rem;
  box-shadow: none;
  margin-left:0.625rem;
} 

/* Change navbar styling on scroll */

.navigation-wrap.scroll-on{
  position:fixed;
  top:0;
  left:0;
  width:100%;
  background:#fff;
  box-shadow: 0 0.125rem 1.75rem 0 rgb(0,0,0,0.09);
  transition:all .15s ease-in-out 0s;
}
 .top-banner{
  width:100%;
  background: url('hotel2.jpg') no-repeat center;
  background-size:cover;
  padding:16.875rem 0 9.375rem;
}

.white-btn {
  padding: 0.625rem 1.875rem;
  line-height: 25px;
  background-color: darkorange;
  border: 0.1875rem solid darkorange;
  color: whitesmoke;
  font-size: 0.9375rem;
  font-weight: 600;
  text-transform: capitalize;
  box-shadow: 0px 2px 10px -1px rgb(0 0 0 / 19%);
  -webkit-transition: all .4s ease-out 0s;
  -o-transition: all .4s ease-out 0s;
  -moz-transition: all .4s ease-out 0s;
  transition: all .4s ease-out 0s;
}

.main-btn:hover {
  background-color: transparent;
  color: orange;
}

.white-btn:hover {
  background-color: transparent;
  color: orange;
  border-color: orange;
}

.wrapper {
  padding-top: 4rem;
  padding-bottom: 2rem;
}

.text-content {
  width: 70%;
  margin: auto;
}

.counter-section h2,
.testimonial-section h2,
.book-food-text h2 {
  color: #fff;
}
.about-section{
  background: white;
}
.about-section .card,
.about-section .card img{
  border-radius: 0.625rem;
}
.about-section .text-sec{
  padding-left:2rem;
}
/* ContactStyle */
#contact{
    padding: 25px 0;
}
.contact{
    font-family: 'Ubuntu',sans-serif;
   background-color: #8c8c8c; 
   background-size: cover;
}
.contact .title{
    position: relative;
    text-align: center;
    font-size: 40px;
    font-weight: 500;
    margin-bottom: 60px;
    padding-bottom: 20px;
    font-family: 'Ubuntu',sans-serif;
}
.contact .title::before{
    content: "";
    position: absolute;
    bottom: 0px;
    left: 50%;
    width: 130px;
    height: 3px;
    background: goldenrod;
    transform: translateX(-50%);
}
.contact .contact-content{
    font-family: 'Ubuntu',sans-serif;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
}
.contact .contact-content .column{
    width: calc(50% - 30px) ;
}
.contact .contact-content .text{
    font-size: 20px;
    font-weight: 600;
    margin-bottom: 10px;
    color: darkslategray;
}
.contact .contact-content .left p{
    text-align: justify;
}
.contact .contact-content .left .icons{
    margin: 10px 0;
}
.contact .contact-content .row{
    display: flex;
    height: 65px;
    align-items: center;
}
.contact .contact-content .row .info{
    margin-left: 30px;
}
.contact .contact-content .row i{
    font-size: 25px;
    color: rgb(230, 144, 15);
}
.contact .contact-content .info .head{
    font-weight: 500;
    color: darkslategrey;
}
.contact .contact-content .info .sub-title{
    color: #333;
    color: black;
}
.contact .right form .fields{
    display: flex;
}
.contact .right form .field,
.contact .right form .fields .field{
    height: 45px;
    width: 100%;
    margin-bottom: 15px;
}
.contact .right form .textarea{
    height: 80px;
    width: 100%;
}
.contact .right form .name{
    margin-right: 10px;
}
.contact .right form .field input,
.contact .right form .textarea textarea{
    height: 100%;
    width: 100%;
    border: 1px solid lightgrey;
    border-radius: 6px;
    outline: none;
    padding: 0 15px;
    font-size: 17px;
    font-family: 'Poppins', sans-serif;
    transition: all 0.3s ease;
}
.contact .right form .field input:focus,
.contact .right form .textarea textarea:focus{
    border-color: #b3b3b3;
}
.contact .right form .textarea textarea{
  padding-top: 10px;
  resize: none;
}
.contact .right form .button-area{
  display: flex;
  align-items: center;
}
.right form .button-area button{
  color: #fff;
  display: block;
  width: 160px!important;
  height: 45px;
  outline: none;
  font-size: 18px;
  font-weight: 500;
  border-radius: 6px;
  cursor: pointer;
  flex-wrap: nowrap;
  background: rgba(230, 144, 15, 0.747);
  border: 2px solid rgba(230, 144, 15, 0.658);
  transition: all 0.3s ease;
}
.right form .button-area button:hover{
  color: rgba(230, 144, 15, 0.671);
  background: none;
}

  </style>
    </head>
    <body>
     <!-- header design -->
  <header>
    <nav class="navbar navbar-expand-lg navigation-wrap">
      <div class="container">
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="faces/index.xhtml">List of Hotels</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#team">Our Team</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#contact">Contact Us</a>
            </li>
            <li><button class="main-btn">+250 785 524 236</button></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
        <section id="home">
    <div class="container-fluid px-0 top-banner">
      <div class="container">
        <div class="row">
          <div class="col-lg-5 col-md-6">
            <h2>Welcome to Hotel Registration</h2>
            <p>This is a System that helps to register Hotels for better management.
            </p>
            <div class="mt-4">
                <a href="faces/CreateForm.xhtml" class="white-btn ms-lg-4 mt-lg-0 mt-4">Register<i class="fas fa-angle-right ps-3"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
    <!-- section-3 about-->
   <section id="about">
     <div class="about-section wrapper">
         <h2 style="text-align: center;">About Us</h2>
       <div class="container">
         <div class="row align-items-center">
           <div class="col-lg-7 col-md-12 mb-lg-0 mb-5">
             <div class="card border-0">
                 <img src="lit2.jpg" class="img-fluid">
             </div>
           </div>
           <div class="col-lg-5 col-md-12 text-sec">
            <h3>We pride ourselves on providing better Services.</h3>
            <p style="color: darkgray">We are aiming to work with hotels and make their registration in order to advertise them.<br> We are team which is highly passionate in helping others to achieve their goals. <br> The time you join us you will experience perfect customer care and important services <br> Welcome </p>
              <button class="main-btn mt-4">Learn More</button>
           </div>
         </div>
       </div>
     </div>
   </section>
  
    <!--Contact me-->
   <section class="contact" id="contact">
     <div class="max-width">
         <h2 style="text-align: center; padding-bottom: 2rem; padding-top: 1rem;">Contact Us</h2>
       <div class="contact-content">
        <div class="column left">
          <div class="text">Get in Touch</div>
          <p style="color: darkgray">For more Information or if you are interested you can contact us on phone number and email below.</p>
          <div class="icons">
              <div class="row">
                  <img src="" alt="">
                  <div class="info">
                      <div class="head">Phone Number</div>
                      <div class="sub-title">+250785524236</div>
                  </div>
              </div>
              <div class="row">
                  <img src="" alt="">
                  <div class="info">
                      <div class="head">Address</div>
                      <div class="sub-title">Kigali, Rwanda</div>
                  </div>
              </div>
              <div class="row">
                  <img src="" alt="">
                  <div class="info">
                      <div class="head">Email</div>
                      <div class="sub-title">bumzessa@gmail.com</div>
                  </div>
              </div>
          </div>
      </div>
   </section>
    <!--End of Contact me-->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
  <!-- own js -->
  <script>
      $(document).ready(function(){
    $(window).scroll(function(){
        // sticky navbar on scroll script
        if(this.scrollY > 20){
            $('.navbarp').addClass("sticky");
        }else{
            $('.navbarp').removeClass("sticky");
        }
    });
   // toggle menu/navbar script
  $('.menu-btn').click(function(){
     $('.navbarp .menup').toggleClass("active");
     $('.menu-btn i').toggleClass("active");
   });
  </script>
    </body>
</html>
