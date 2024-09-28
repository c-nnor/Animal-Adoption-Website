<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsandEvents.aspx.cs" Inherits="_50074566.NewsandEvents" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Compasionate Critters Animal Rescue</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="stylesheets/newsandevents.css" rel="stylesheet" />
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
                    <a href="main.aspx#aboutus">About us</a>
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
            <div class="col1-container">
                <h1>Events</h1>
                <p>Please join us in our various events we take place often!</p>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ItemStyle-CssClass="gridview-cell" HeaderStyle-CssClass="gridview-header" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ItemStyle-CssClass="gridview-cell" HeaderStyle-CssClass="gridview-header" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-CssClass="gridview-cell" HeaderStyle-CssClass="gridview-header" />
                </Columns>
            </asp:GridView>
            </div>
            <div class="col2-container">
               <h1>Animal News</h1>
                <p>Here are some animal news articles!</p>
              <div class="news-container">
                    <asp:PlaceHolder ID="phNewsArticles" runat="server"></asp:PlaceHolder>
                </div>
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