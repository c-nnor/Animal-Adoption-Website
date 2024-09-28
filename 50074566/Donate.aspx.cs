using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _50074566
{
    public partial class Donate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDonateMoney_Click(object sender, EventArgs e)
        {
            // Redirect the user to the PayPal donation page in a new tab
            string paypalUrl = "https://paypal.me/scaryinc";
            string script = "<script>window.open('" + paypalUrl + "', '_blank');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "OpenPayPalLink", script);
        }

        protected void btnMonthlySponsor_Click(object sender, EventArgs e)
        {
            // Redirect the user to the monthly sponsorship page in a new tab
            string monthlySponsorUrl = "https://example.com/monthly-sponsorship";
            string script = "<script>window.open('" + monthlySponsorUrl + "', '_blank');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "OpenMonthlySponsorLink", script);
        }
    }
}