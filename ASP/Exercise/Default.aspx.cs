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

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            CheckBoxLabel.Text = "The box is checked";
        }
        else
        {
            CheckBoxLabel.Text = "The box is not checked";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            RadioButtonLabel.Text = "Radio Button is checked";
        }
        else
        {
            RadioButtonLabel.Text = "Radio Button is not checked";
        }
    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {

    }
}