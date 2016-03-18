using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddRecord2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void DetailsView1_InsertItem1()
    {
        Customer newCustomer = new Customer();
        TryUpdateModel(newCustomer);
        if (ModelState.IsValid)
        {
            using (var myEntities = new CustomerTableEntities())
            {
                myEntities.Customers.Add(newCustomer);
                myEntities.SaveChanges();
            }
        }

    }

}