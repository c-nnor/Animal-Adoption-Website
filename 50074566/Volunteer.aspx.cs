using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _50074566
{
    public partial class Volunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // Collect form data
                string name = txtName.Text;
                string email = txtEmail.Text;
                string message = txtMessage.Text;

                // Create mailto link
                string mailtoLink = $"mailto:connorcharnock@hotmail.co.uk?subject=New Volunteer Form Submission&body=Name: {name}%0D%0AEmail: {email}%0D%0AMessage: {message}";

                // Redirect to mailto link
                Response.Redirect(mailtoLink);

                txtName.Text = "";
                txtEmail.Text = "";
                txtMessage.Text = "";
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., display an error message)
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }
    }
}