<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Animals.aspx.cs" Inherits="_50074566.Animals" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Compasionate Critters Animal Rescue</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="stylesheets/animals.css" rel="stylesheet" />
    <script type="text/javascript">
        function openMailTo() {
            var animalName = document.getElementById('<%= litName.ClientID %>').innerText;
        var animalType = document.getElementById('<%= litType.ClientID %>').innerText;

            var subject = encodeURIComponent("Enquiry to Adopt: " + animalName);
            var body = encodeURIComponent("I am interested in adopting the following animal:%0D%0A%0D%0A" +
                "Animal Name: " + animalName + "%0D%0A" +
                "Animal Type: " + animalType + "%0D%0A%0D%0A" +
                "Please provide me with more information.");

            window.location.href = "mailto:your.email@example.com?subject=" + subject + "&body=" + body;

            // Always return true to allow the postback
            return true;
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
        <main>
            <div class="app">
                <h1>&nbsp Rehome an Animal</h1>
                <asp:DropDownList ID="ddlAnimalType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAnimalType_SelectedIndexChanged">
                    <asp:ListItem Text="-- Select Animal Type --" Value="" />
                </asp:DropDownList>

                <asp:DropDownList ID="ddlFilteredAnimals" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFilteredAnimals_SelectedIndexChanged">
                    <asp:ListItem Text="-- Select Animal --" Value="" />
                </asp:DropDownList>

                <div id="animalDetails" runat="server" visible="false">
                    <h2>Animal Details</h2>
                    <asp:Image ID="imgAnimal" runat="server" CssClass="animal-photo" />
                    <p><strong>Name:</strong> <asp:Literal ID="litName" runat="server"></asp:Literal></p>
                    <p><strong>Type:</strong> <asp:Literal ID="litType" runat="server"></asp:Literal></p>
                    <p><strong>Breed:</strong> <asp:Literal ID="litBreed" runat="server"></asp:Literal></p>
                    <p><strong>Age:</strong> <asp:Literal ID="litAge" runat="server"></asp:Literal></p>
                    <p><strong>Description:</strong> <asp:Literal ID="litDescription" runat="server"></asp:Literal></p>
                    <asp:Button ID="btnEnquireToAdopt" runat="server" Text="Enquire to Adopt" OnClientClick="return openMailTo();" OnClick="btnEnquireToAdopt_Click" />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </main>
        
        
        
         <footer>
     <p><a href="Contactus.aspx" target="_blank">Contact us</a></p>
     <p><a href="http://www.facebook.com/CCAR">Facebook</a></p>
     <p><a href="http://www.instagram.com/CCAR">Instagram</a></p>
     <p>&copy; <%= DateTime.Now.Year %> Compassionate Critters Animal Rescue. </p>
 </footer>
    </form>
</body>
</html>