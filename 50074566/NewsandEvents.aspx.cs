using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;

namespace _50074566
{
    public partial class NewsandEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadImagesFromXml();
                LoadEventData();
                BindNewsData();
            }
        }

        private void LoadEventData()
        {
            // Path to your XML file
            string xmlFilePath = Server.MapPath("~/xml files/news_events.xml");

            // Read the XML file
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(xmlFilePath);

           
            XmlNodeList eventNodes = xmlDoc.SelectNodes("/news_events/event");

            // Create a DataTable to store the data
            var dataTable = new System.Data.DataTable();
            dataTable.Columns.Add("Title");
            dataTable.Columns.Add("Date");
            dataTable.Columns.Add("Description");

            // Iterate through each event and add data to DataTable
            foreach (XmlNode eventNode in eventNodes)
            {
                string title = eventNode.SelectSingleNode("title").InnerText;
                string date = eventNode.SelectSingleNode("date").InnerText;
                string description = eventNode.SelectSingleNode("description").InnerText;

                dataTable.Rows.Add(title, date, description);
            }

            // Bind DataTable to GridView
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        private void LoadImagesFromXml()
        {
            string xmlFilePath = Server.MapPath("~/xml files/slideshowimages_news.xml");

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

        private void BindNewsData()
        {
            // Path to your XML file for news
            string xmlFilePath = Server.MapPath("~/xml files/news.xml");

            // Read the XML file
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(xmlFilePath);

            // Create a DataSet to store the data
            DataSet newsDataSet = new DataSet();
            newsDataSet.ReadXml(xmlDoc.CreateNavigator().ReadSubtree());

            // Check if there is a table in the DataSet
            if (newsDataSet.Tables.Count > 0)
            {
                foreach (DataRow row in newsDataSet.Tables[0].Rows)
                {
                    // Create a news article container
                    var articleDiv = new HtmlGenericControl("div");
                    articleDiv.Attributes["class"] = "news-article";

                    // Create a title header
                    var titleHeader = new HtmlGenericControl("h2");
                    titleHeader.InnerText = row["Title"].ToString();

                    // Create a date paragraph
                    var dateParagraph = new HtmlGenericControl("p");
                    dateParagraph.Attributes["class"] = "date";
                    dateParagraph.InnerText = row["Date"].ToString();

                    // Create a content container
                    var contentDiv = new HtmlGenericControl("div");
                    contentDiv.Attributes["class"] = "content";
                    contentDiv.InnerHtml = row["Content"].ToString();

                    // Add controls to the news article container
                    articleDiv.Controls.Add(titleHeader);
                    articleDiv.Controls.Add(dateParagraph);
                    articleDiv.Controls.Add(contentDiv);

                    // Add the news article container to the placeholder
                    phNewsArticles.Controls.Add(articleDiv);
                }
            }
        }

    }
}