using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace _50074566
{
    public partial class Animals : System.Web.UI.Page
    {
        // Update the path to your XML file
        private string XmlFilePath = "~/xml files/animals.xml";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAnimalTypes();

                // Select and display details for the first animal by default
                if (ddlAnimalType.Items.Count > 1) 
                {
                    ddlAnimalType.SelectedIndex = 1; // Select the second item 
                    ddlAnimalType_SelectedIndexChanged(sender, e); 
                    ddlFilteredAnimals.SelectedIndex = 1; 
                    ddlFilteredAnimals_SelectedIndexChanged(sender, e); 
                }
            }
        }



        private void LoadAnimalTypes()
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Server.MapPath(XmlFilePath));

            HashSet<string> animalTypes = new HashSet<string>();

            foreach (XmlNode animalNode in xmlDoc.SelectNodes("/animals/animal"))
            {
                string type = animalNode.SelectSingleNode("Type").InnerText;
                if (!string.IsNullOrEmpty(type))
                {
                    animalTypes.Add(type);
                }
            }

            foreach (string type in animalTypes)
            {
                ddlAnimalType.Items.Add(new ListItem(type, type));
            }
        }



        protected void ddlAnimalType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedType = ddlAnimalType.SelectedValue;
            LoadFilteredAnimals(selectedType);
        }

        private void LoadFilteredAnimals(string selectedType)
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Server.MapPath("~/xml files/animals.xml"));

            ddlFilteredAnimals.Items.Clear();
            ddlFilteredAnimals.Items.Add(new ListItem("-- Select Animal --", ""));

            foreach (XmlNode animalNode in xmlDoc.SelectNodes($"/animals/animal[Type='{selectedType}']"))
            {
                string name = animalNode.SelectSingleNode("Name").InnerText;
                ddlFilteredAnimals.Items.Add(new ListItem(name, name));
            }
        }

        protected void ddlFilteredAnimals_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedAnimal = ddlFilteredAnimals.SelectedValue;
            DisplayAnimalDetails(selectedAnimal);
        }

        private void DisplayAnimalDetails(string selectedAnimal)
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Server.MapPath("~/xml files/animals.xml"));

            XmlNode animalNode = xmlDoc.SelectSingleNode($"/animals/animal[Name='{selectedAnimal}']");

            if (animalNode != null)
            {
                litName.Text = animalNode.SelectSingleNode("Name").InnerText;
                litType.Text = animalNode.SelectSingleNode("Type").InnerText;
                litBreed.Text = animalNode.SelectSingleNode("Breed").InnerText;
                litAge.Text = animalNode.SelectSingleNode("Age").InnerText;
                litDescription.Text = animalNode.SelectSingleNode("Description").InnerText;

                string photoUrl = animalNode.SelectSingleNode("PhotoUrl")?.InnerText;
                imgAnimal.ImageUrl = ResolveUrl(photoUrl);
                imgAnimal.AlternateText = selectedAnimal;

                animalDetails.Visible = true;
            }
            else
            {
                ClearAnimalDetails();
            }
        }

        private void ClearAnimalDetails()
        {
            litName.Text = string.Empty;
            litType.Text = string.Empty;
            litBreed.Text = string.Empty;
            litAge.Text = string.Empty;
            litDescription.Text = string.Empty;
            imgAnimal.ImageUrl = string.Empty;
            imgAnimal.AlternateText = string.Empty;

            animalDetails.Visible = false;
        }
        protected void btnEnquireToAdopt_Click(object sender, EventArgs e)
        {
            string animalName = litName.Text;
            string animalType = litType.Text;

            string subject = "Enquiry to Adopt: " + animalName;
            string body = "I am interested in adopting the following animal:\n\n" +
                          "Animal Name: " + animalName + "\n" +
                          "Animal Type: " + animalType + "\n\n" +
                          "Please provide me with more information.";

            string mailtoLink = "mailto:your.email@example.com?subject=" + Uri.EscapeDataString(subject) + "&body=" + Uri.EscapeDataString(body);

            ClientScript.RegisterStartupScript(this.GetType(), "mailto", "window.location.href = '" + mailtoLink + "';", true);
        }

    }
}
