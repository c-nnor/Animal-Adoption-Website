<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="_50074566.Main" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Compasionate Critters Animal Rescue</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="stylesheets/main.css" rel="stylesheet" />
    <script>
                var currentSlide = 0;
                var totalSlides = 3; // Set the total number of slides
                var interval;

                function initSlider() {
                    showSlide(currentSlide);
                    interval = setInterval(nextSlide, 5000); // Auto transition every 5 seconds
                }

                function showSlide(index) {
                    var slider = document.querySelector('.slider');
                    slider.style.transform = 'translateX(' + (-index * 100) + '%)';
                }

                function prevSlide(event) {
                    currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
                    showSlide(currentSlide);
                    resetInterval();
                    event.preventDefault(); // Prevent default form submission
                }

                function nextSlide(event) {
                    currentSlide = (currentSlide + 1) % totalSlides;
                    showSlide(currentSlide);
                    resetInterval();
                    event.preventDefault(); // Prevent default form submission
                }

                function resetInterval() {
                    clearInterval(interval);
                    interval = setInterval(nextSlide, 5000); // Reset interval after manual navigation
                }

                window.onload = initSlider;
    </script>
</head>
<body>
    <form runat="server">
        <header>
            <a href="Main.aspx"><img id="logo" src="images/logo(1).png" /></a>
        </header>

        <div class="navbar">
            
            <div class="dropdown">
                <button class="dropbtn">
                    ☰
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="Main.aspx">Home</a>
                    <a href="#aboutus">About us</a>
                    <a href="NewsandEvents.aspx">News & Events</a>
                    <a href="Animals.aspx">Animals</a>
                    <a href="Contactus.aspx">Contact us</a>
                </div>
                
            </div>
                <a href="Main.aspx">Home</a>
                <a href="Animals.aspx">Animals</a>
                <a href="Volunteer.aspx">Volunteer</a>
                <a href="Donate.aspx">Donate</a>   
        </div>

        <main>
            <div class="slider-container">
                <div class="slider">
                    <asp:Image ID="Image1" runat="server" CssClass="slide" />
                    <asp:Image ID="Image2" runat="server" CssClass="slide" />
                    <asp:Image ID="Image3" runat="server" CssClass="slide" />
                </div>
                <button class="arrow left" type="button" onclick="prevSlide(event)">&#9665;</button>
                <button class="arrow right" type="button" onclick="nextSlide(event)">&#9655;</button>
            </div>
            <br />
            <br />
            <hr id="hr"/>
        </main>
        <div class="container">
            <div class="aboutus-container">
                    <h1 id="aboutus">About Us</h1>
                <br />
                <br />
                    <p>Welcome to Compassionate Critters Animal Rescue, a beacon of hope for animals in need.</p>
                    <p>Located in the heart of Belfast, Northern Ireland, our shelter has been serving the local community for over 6 years. We are dedicated to providing love, care, and a second chance for animals in distress.</p>
                    <p>At Compassionate Critters, we believe in the power of compassion to transform lives. Our team of passionate volunteers works tirelessly to rescue, rehabilitate, and rehome animals, creating a better future for both animals and adopters.</p>
                    <p>Join us in our mission to make a difference. Whether you're looking to adopt, volunteer, or support us through donations, your contribution helps us continue our journey of compassion.</p>
                    <p>Together, we can create a world where every critter is cherished and every life matters.</p>
                    <img src="images/paws%20walking1.png" />
                    
                    <h1>Our Mission: Securing Forever Homes for Beloved Companions</h1>
                    <p>
                        Welcome to Compassionate Critters Animal Rescue, where each day unfolds as a journey filled with hope, compassion, and heartwarming stories. For more than six years, we've stood as a dedicated beacon in Belfast, Northern Ireland, devoted to the well-being and happiness of animals in distress.
                        <br />
                        <strong>A Renewed Chance for Love</strong> <br /><br />
                        At the core of our mission lies a profound belief in the transformative force of compassion. Our team of dedicated volunteers works tirelessly to rescue, rehabilitate, and find new homes for cherished companions, providing them with a second chance at a loving and caring environment. We firmly believe that every creature deserves a life enriched with warmth, attention, and the joy of a forever family.
                        <br /><br />
                        <strong>Rescuing and Rehoming, Every Single Day</strong><br /><br />
                        Each day at Compassionate Critters marks a triumph in the journey of rehoming. From the moment an animal enters our shelter, we embark on a quest to understand their individual personalities and requirements. Our commitment goes beyond mere rescue; it extends to thoughtfully pairing each animal with a loving adopter, forging perfect bonds that last a lifetime.
                        <br /><br />
                        <strong>Join Us on This Journey</strong><br /><br />
                        Whether you're contemplating adoption, seeking volunteer opportunities, or eager to support our cause through donations, you become an integral part of our journey. Your contribution enables us to sustain this beautiful mission of compassion, shaping a world where every creature is treasured, and every life holds significance.
                        <br /><br />
                        <strong>Together, We Bring About Change</strong><br /><br />
                        Compassionate Critters is more than just a shelter; it's a community bound by a shared love for animals. Join us in crafting a world where wagging tails, soft purrs, and joyful homes define the narrative. Together, we make a difference—one paw print at a time.
                        <br /><br />
                        Thank you for being a part of our narrative and considering Compassionate Critters Animal Rescue as your ally in creating brighter tomorrows for beloved companions in need.
                        <br /><br />
                    </p>
            </div>
            <div class="photos-container">
         
                <h1>Photos of our happy Adopted Animals!</h1>
                <img class="image" src="images/20191130_114625.jpg" />
                <br />
                <br />
                <br />
                <img src="images/cozy-baby-cat-sleeping-750x550.jpg" />
                <br />
                <br />
                <br />
                <img src="images/adoptiondog.PNG" />
            </div>
        </div>
        
         <footer>
     <p><a href="Contactus.aspx" target="_blank">Contact us</a></p>
     <p><a href="http://www.facebook.com/CCAR">Facebook</a></p>
     <p><a href="http://www.instagram.com/CCAR">Instagram</a></p>
     <p>&copy; <%= DateTime.Now.Year %> Compassionate Critters Animal Rescue. </p>
 </footer>
    </form>
</body>
</html>