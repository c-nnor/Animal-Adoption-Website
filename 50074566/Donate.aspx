<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="_50074566.Donate" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Compassionate Critters Animal Rescue - Donate</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="stylesheets/donate.css" rel="stylesheet" />
    <script>
        function openPayPalLink() {
            window.open('https://paypal.me/scaryinc', '_blank');
        }

        function openMonthlySponsorLink() {
            window.open('https://paypal.me/scaryinc', '_blank');
        }
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

        <div class="donate-container">
            <div class="donate-column">
                <h2>Donate Money</h2>
                <p>Help us make a difference by contributing financially. Your donation will go a long way in supporting our mission to provide care and shelter to animals in need.</p>
                <p>Click the button below to make a monetary donation:</p>
               
                    <button type="button" id="btnDonateMoney" onclick="openPayPalLink()">Donate Money</button>

            </div>

            <div class="donate-column">
                <h2>Donate Food</h2>
                <p>Support our animals by donating food items. We accept both dry and canned pet food. Your contribution helps us ensure that every animal in our care receives proper nutrition.</p>
                <p>Check our list of recommended food items and drop off your donation at our location:</p>
                <p><a target="_blank"  href="https://www.rspca.org.uk/adviceandwelfare/pets">Recommended Food List</a></p>
            </div>

            <div class="donate-column">
                <h2>Monthly Sponsorships</h2>
                <p>Become a monthly sponsor and provide consistent support to our organization. Monthly sponsorships help us plan and allocate resources more effectively to meet the ongoing needs of our animals.</p>
                <p>Sign up for a monthly sponsorship plan today:</p>
                <button type="button" id="btnMonthlySponsor" onclick="openMonthlySponsorLink()">Become a Sponsor</button>
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