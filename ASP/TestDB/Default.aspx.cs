using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (CustomersTableEntities myEntities = new CustomersTableEntities()){
            var customerList = from customer in myEntities.Customers select customer;
            GridView1.DataSource = customerList.ToList();
            GridView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddRecord2");
    }
}