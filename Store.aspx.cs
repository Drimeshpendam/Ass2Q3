using System;

public partial class Store : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Hide the result label on initial page load
        lblResult.Visible = false;
    }

    protected void btnValidate_Click(object sender, EventArgs e)
    {
        // Check if all validators on the page are valid
        if (Page.IsValid)
        {
            // If the page is valid, show a success message
            lblResult.Text = "Payment information is valid.";
            lblResult.CssClass = "success-message";
        }
        else
        {
            // If the page is not valid, show an error message
            lblResult.Text = "Please correct the errors above.";
            lblResult.CssClass = "error-message";
        }

        // Make the result label visible
        lblResult.Visible = true;
    }
}
