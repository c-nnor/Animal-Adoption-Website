<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Volunteer.aspx.cs" Inherits="_50074566.Volunteer" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Compassionate Critters Animal Rescue </title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="stylesheets/Volunteer.css" rel="stylesheet" />
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
                    <a href="Newsandevents.aspx">News & Events</a>
                    <a href="Animals.aspx">Animals</a>
                    <a href="Contactus.aspx">Contact us</a>
                </div>
            </div>
            <a href="Main.aspx">Home</a>
            <a href="Animals.aspx">Animals</a>
            <a href="Volunteer.aspx">Volunteer</a>
            <a href="Donate.aspx">Donate</a>
        </div>

        <div class="volunteer-container">
        <div>
            <h2>Volunteer Form</h2>
            <asp:Label runat="server"  AssociatedControlID="txtName"><strong>Name:</strong></asp:Label><br />
            <asp:TextBox runat="server" Width="200px" ID="txtName"></asp:TextBox><br />

            <asp:Label runat="server"  AssociatedControlID="txtEmail"><strong>Email:</strong></asp:Label><br />
            <asp:TextBox runat="server" Width="200px" ID="txtEmail"></asp:TextBox><br />

            <asp:Label runat="server"  AssociatedControlID="txtMessage"><strong>Message:</strong></asp:Label><br />
            <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" Rows="5" Width="300px"></asp:TextBox><br />
            <br />

            <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit" CssClass="btnSubmit" />
            <br /><br /><br />
        </div>
        <div class="volunteerinfo-container">
            <h2>We Appreciate Volunteers!</h2>
            <ul>
                <li><strong>Mission Impact:</strong> Volunteers play a crucial role in fulfilling the organization's mission to care for and protect animals in need.</li>
                <li><strong>Heart of the Organization:</strong> Volunteers are considered the heartbeat of the organization, bringing enthusiasm and genuine love for animals.</li>
                <li><strong>Opportunity for Impact:</strong> Joining the volunteer team provides an opportunity to make a meaningful impact on the lives of animals in need.</li>
                <li><strong>Skill Development:</strong> Volunteers gain valuable skills through hands-on experiences, enhancing personal and professional growth.</li>
                <li><strong>Community and Friendships:</strong> Volunteers become part of a supportive community and build lasting friendships with like-minded individuals.</li>
                <li><strong>Friendly Staff:</strong> The organization's friendly staff is dedicated to guiding and mentoring volunteers, ensuring a rewarding and fulfilling experience.</li>
             
    </ul>
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
