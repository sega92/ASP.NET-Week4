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
        using(CustomersTableEntities myEntities = new CustomersTableEntities())
        {
            var customerList = from Customer in myEntities.Customers select Customer;
            GridView1.DataSource = customerList.ToList();
            GridView1.DataBind();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddRecord");
    }

     protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       using (CustomersTableEntities myEntities = new CustomersTableEntities())
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            int id = int.Parse(row.Cells[0].Text);

            Customer customerToDelete = myEntities.Customers.Where(c => c.Id == id).FirstOrDefault();
            myEntities.Customers.Remove(customerToDelete);
            myEntities.SaveChanges();
        }
    }

   




    }