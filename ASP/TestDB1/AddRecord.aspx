<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddRecord.aspx.cs" Inherits="AddRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DefaultMode ="Insert" InsertMethod ="DetailsView1_InsertItem" AutoGenerateRows ="false">
        <Fields>

            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Adress" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
           
            <asp:CommandField ShowInsertButton="true" ShowCancelButton="false" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

