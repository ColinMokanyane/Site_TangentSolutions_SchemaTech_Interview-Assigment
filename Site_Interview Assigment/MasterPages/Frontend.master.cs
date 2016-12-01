using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_Frontend : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        switch (Page.Theme.ToLower())
        { 
            case "darkgrey":
                Menu1.Visible = false;
                TreeView1.Visible = true;
                break;
            default:
                Menu1.Visible = true;
                TreeView1.Visible = false;
                break;
        }
    }
}
