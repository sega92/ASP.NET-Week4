<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>My very first ASP.NET Web Forums page</h1>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Please type in your name: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Click me!" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="ButtonLabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Please check or uncheck the box: "></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Check Box Button" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="CheckBoxLabel" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Please click the radio button: "></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Radio Button" OnClick="Button3_Click" />
        <br />
        <asp:Label ID="RadioButtonLabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Please click one of the radio buttons in the list"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Vertical" RepeatLayout="Table">
                <asp:ListItem Text="Radio Button 1"></asp:ListItem>
                <asp:ListItem Text="Radio Button 2"></asp:ListItem>
                <asp:ListItem Text="Radio Button 3"></asp:ListItem>
        </asp:RadioButtonList> 
        <br />
        <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
        <br />
        <asp:Label ID="RadioList" runat="server" Text=" "></asp:Label>

    </div>
    </form>
</body>
</html>
