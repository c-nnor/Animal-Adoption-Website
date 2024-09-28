using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace _50074566
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadImagesFromXml();
            }
        }
        private void LoadImagesFromXml()
        {
            string xmlFilePath = Server.MapPath("~/xml files/slideshowimages_main.xml");

            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(xmlFilePath);

            // Retrieve image URLs from XML
            XmlNodeList imageNodes = xmlDoc.SelectNodes("//image");

            // Set image URLs to the Image controls in the HTML
            if (imageNodes.Count > 0)
            {
                Image1.ImageUrl = ResolveUrl(imageNodes[0].InnerText);
                Image2.ImageUrl = ResolveUrl(imageNodes[1].InnerText);
                Image3.ImageUrl = ResolveUrl(imageNodes[2].InnerText);
            }
        }
    }
}