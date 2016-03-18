<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Costumer Database</h2>
    <asp:GridView ID="GridView1" runat="server" Height="144px" Width="316px" AutoGenerateColumns="False" DataKeyNames="id" 
          OnRowDeleting="GridView1_RowDeleting" >

        <Columns >
            <asp:BoundField DataField ="Id" HeaderText ="Id" />
             <asp:BoundField DataField ="Name" HeaderText ="Name" />
             <asp:BoundField DataField ="Address" HeaderText ="Address" />
             <asp:BoundField DataField ="City" HeaderText ="City" />
             <asp:BoundField DataField ="Postcode" HeaderText ="Postcode" />
            <asp:CommandField ShowEditButton="true" />
            <asp:CommandField ShowDeleteButton="true" />

        </Columns>

    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Record" Width="167px" />
</asp:Content>
