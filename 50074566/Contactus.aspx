<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="_50074566.Contact_us" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Animal Adoption Center</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="stylesheets/Contactus.css" rel="stylesheet" />
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
                    <a href="Main.aspx#aboutus">About us</a>
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

        <div class="container">
            <div class="column contact-form">
                <h2>Contact Form</h2>
                <asp:Label runat="server" AssociatedControlID="txtName"><strong>Name:</strong></asp:Label><br />
                <asp:TextBox runat="server" Width="200px" ID="txtName"></asp:TextBox><br />

                <asp:Label runat="server" AssociatedControlID="txtEmail"><strong>Email:</strong></asp:Label><br />
                <asp:TextBox runat="server" Width="200px" ID="txtEmail"></asp:TextBox><br />

                <asp:Label runat="server" AssociatedControlID="txtMessage"><strong>Message:</strong></asp:Label><br />
                <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" Rows="5" Width="300px"></asp:TextBox><br />
                <br />

                <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit" CssClass="btnSubmit" />
                <br /><br /><br />
                <br />
            </div>

            <div class="column opening-hours-container">
                <table class="opening-hours-table">
                    <caption>Opening Hours</caption>
                    <tr>
                        <th>Day</th>
                        <th>Opening Time</th>
                        <th>Closing Time</th>
                    </tr>
                    <tr>
                        <td>Monday</td>
                        <td>9:00 AM</td>
                        <td>5:00 PM</td>
                    </tr>
                    <tr>
                        <td>Tuesday</td>
                        <td>9:00 AM</td>
                        <td>5:00 PM</td>
                    </tr>
                    <tr>
                        <td>Wednesday</td>
                        <td>9:00 AM</td>
                        <td>5:00 PM</td>
                    </tr>
                    <tr>
                        <td>Thursday</td>
                        <td>9:00 AM</td>
                        <td>5:00 PM</td>
                    </tr>
                    <tr>
                        <td>Friday</td>
                        <td>9:00 AM</td>
                        <td>4:00 PM</td>
                    </tr>
                    <tr>
                        <td>Saturday</td>
                        <td>9:00 AM</td>
                        <td>5:00 PM</td>
                    </tr>
                    <tr>
                        <td>Sunday</td>
                        <td>9:00 AM</td>
                        <td>5:00 PM</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="social-links">
            <h1>Social Media & Emails</h1>
            <p><a href="http://www.facebook.com/CCAR">facebook.com/CCAR</a></p>
            <p><a href="http://www.instagram.com/CCAR">instagram.com/CCAR</a></p>
            <p>Email: <a href="mailto:contact@CCAR.co.uk">contact@CCAR.co.uk</a></p>
            <img id="social" src="images/social%20media.png" />
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



