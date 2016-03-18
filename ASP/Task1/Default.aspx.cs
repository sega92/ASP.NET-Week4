using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ButtonLabel.Text = "Hello " + TextBox1.Text;

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            RadioButtonLabel.Text = "The radio button is checked";
        }
        else
        {
            RadioButtonLabel.Text = "The radio button is not checked";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            CheckBoxLabel.Text = "The Box is Checked";
        }
        else
        {
            CheckBoxLabel.Text = "The Box is not Checked";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
       if(RadioButtonList1.SelectedIndex > -1)
        {
            RadioList.Text = "You selected " + RadioButtonList1.Text;
        }
    }
}