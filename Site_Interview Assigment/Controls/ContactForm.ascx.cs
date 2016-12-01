using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(txtPhoneHome.Text) || !string.IsNullOrEmpty(txtPhoneBusiness.Text))
        {
                args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void btnSendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Message.Visible = true;
            FormTable.Visible = false;
            System.Threading.Thread.Sleep(5000);
        }
    }
}