<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRecord.aspx.cs" Inherits="AddRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows ="False" DefaultMode= "Insert"  InsertMethod= "DetailsView1_InsertItem1" >
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                <asp:CommandField ShowInsertButton ="true" ShowCancelButton ="false" />
            </Fields>
        </asp:DetailsView>
       
      </form>
</body>
</html>
