<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />

</head>
<body style="height: 432px">
    <form id="form1" runat="server">


        <h1 style="text-align: center">Here are some examples from the ASP.NET crib sheet</h1>
        <br />
        <br />

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                    <!-- container -->

                    <div class="row">
                        <!-- First row -->


                        <div class="col-lg-6">
                            <!-- First row, First Column -->
                            <h4>Standard Controls</h4>
                            <asp:Panel ID="Panel1" runat="server" GroupingText="" Width="514px" Height="1320px">
                                <asp:Label ID="Label1" runat="server" Text="Simple Controls"></asp:Label>
                                <br />
                                <br />
                                <p>
                                    <asp:Label ID="Label2" runat="server" Text="Here is a check box:"></asp:Label>
                                    <p>
                                        <br />
                                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Please check the checkbox and click the button" />
                                        <p>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Box Button" />
                                        </p>
                                        <asp:Label ID="CheckBoxLabel" runat="server"></asp:Label>
                                        <p>
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="https://www.google.co.uk" Text="LinkButton_for_Google">
                                            </asp:LinkButton>
                                        </p>
                                        <p>
                                            Click on the image button to follow the link:
                                        </p>
                                        <p>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.facebook.com">Here is a link to Facebook</asp:HyperLink>
                                        </p>
                                        <p>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/Google.png" PostBackUrl="https://www.google.co.uk" Width="105px" />
                                        </p>
                                        <p>
                                            This is an Image Map. Click on the Earth or Moon for a little bit of information. This can also be used for links.
                                        </p>
                                        <p>
                                            <asp:ImageMap ID="ImageMap1" runat="server" Height="198px" ImageUrl="~/earth-and-moon.png" Width="225px" OnClick="ImageMap1_Click">
                                                <asp:CircleHotSpot AlternateText="Moon is Earth's only natural satellite" NavigateUrl="https://en.wikipedia.org/wiki/Moon" Radius="30" X="41" Y="37" />
                                                <asp:CircleHotSpot AlternateText="Our Earth" NavigateUrl="https://en.wikipedia.org/wiki/Earth" Radius="80" X="157" Y="128" />
                                            </asp:ImageMap>
                                        </p>
                                        <p>
                                            Here is a radio button:
                                        </p>
                                        <p>
                                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Click this radio butoon, then the button below" />
                                        </p>
                                        <p>
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Radio Button" Width="120px" />
                                        </p>
                                        <p>
                                            <asp:Label ID="RadioButtonLabel" runat="server"></asp:Label>
                                        </p>
                                        <p>
                                            This is a multiline text box - Please type something and click the button below:
                                        </p>
                                        <p>
                                            <asp:TextBox ID="TextBox1" runat="server" Height="105px" TextMode="MultiLine" Width="457px"></asp:TextBox>
                                        </p>
                                        <p>
                                        </p>
                                        <p>
                                            This is a text box that accepts email address - Please type an email address and click the button below:
                                        </p>
                                        <p>
                                            <asp:TextBox ID="TextBox2" runat="server" Width="408px"></asp:TextBox>
                                        </p>
                                        <p>
                                            <asp:Button ID="Button3" runat="server" Text="Text Box Button" Width="148px" />
                                        </p>
                                        <p>
                                            &nbsp;
                                        </p>
                                        <p>
                                            Here is a calendar control
                                        </p>
                                        <p>
                                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                        </p>
                                        <p>
                                        </p>
                                        <p>
                                        </p>
                                        <p>
                                        </p>
                                        <p>
                                        </p>
                                    </p>
                                </p>

                            </asp:Panel>


                        </div>
                        <!-- First row, First Column -->



                        <!-- First row, Second Column -->
                        <div class="col-lg-6">
                            <h4>List Controls</h4>
                            <asp:Panel ID="Panel2" runat="server" GroupingText="" Width="517px" Height="1259px">
                                <br />
                                Choose your favourite programming language:<br />
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>C#</asp:ListItem>
                                    <asp:ListItem>JAVA</asp:ListItem>
                                    <asp:ListItem>ASP.NET</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                <asp:Button ID="Button4" runat="server" Text="Confirm Language" Width="187px" />
                                <br />
                                <br />
                                Choose yout all the ice-cream that you like from the list (and you can pick more than one):<br />
                                <asp:CheckBoxList ID="CheckBoxList5" runat="server">
                                    <asp:ListItem>Vanilla</asp:ListItem>
                                    <asp:ListItem>Chocolate</asp:ListItem>
                                    <asp:ListItem>Straberry</asp:ListItem>
                                    <asp:ListItem>Cheery Garcia</asp:ListItem>
                                </asp:CheckBoxList>
                                <br />
                                <asp:Button ID="Button5" runat="server" Text="Confirm ice-cream" Width="155px" />
                                <br />
                                <br />
                                <br />
                                Here is a Radio button list. What kind of music do you prefer<br />
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>Jazz</asp:ListItem>
                                    <asp:ListItem>Rock</asp:ListItem>
                                    <asp:ListItem>Hip Hop</asp:ListItem>
                                    <asp:ListItem>Blues</asp:ListItem>
                                </asp:RadioButtonList>
                                <br />
                                <asp:Button ID="Button6" runat="server" Text="Radio Button List" />
                                <br />
                                <br />
                                <br />
                                This is a bulleted list of Marilyn Monore movies. An image is used for the bullets:<br />
                                <asp:BulletedList ID="BulletedList1" runat="server" BulletImageUrl="~/Movies1.bmp" BulletStyle="CustomImage" Width="381px">
                                    <asp:ListItem>Some Like it Hot</asp:ListItem>
                                    <asp:ListItem>Gentleman Prefer Blondes</asp:ListItem>
                                    <asp:ListItem>Niagara</asp:ListItem>
                                </asp:BulletedList>
                                From the list box, choose your preffered candidate for Chelsea manager. If you think they should do jobshare, you can pick more than one:<br />
                                <br />
                                <asp:ListBox ID="ListBox1" runat="server" Width="78px">
                                    <asp:ListItem>Pep Guardiola</asp:ListItem>
                                    <asp:ListItem>Diego Simeone</asp:ListItem>
                                    <asp:ListItem>Antoniao Conte</asp:ListItem>
                                    <asp:ListItem>John Terry</asp:ListItem>
                                </asp:ListBox>



                                <br />
                                <br />
                                <asp:Button ID="Button7" runat="server" Text="Choose the next Chelase Manager" Width="288px" />



                            </asp:Panel>
                        </div>
                        <!-- First row, Second Column -->

                    </div>
                    <!-- First row -->


                    <div class="row">
                        <!-- Second row -->

                        <!-- First row, Second Column -->
                        <div class="col-lg-6">
                        </div>




                    </div>




                </div>
                <!-- container -->



            </ContentTemplate>
        </asp:UpdatePanel>



    </form>
</body>
</html>
