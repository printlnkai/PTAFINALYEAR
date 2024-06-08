<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTubePage.aspx.cs" Inherits="PTAFINALYEAR.AdminTubePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

       .auto-style4 {
            background-color: #f0f0f0;
            padding: 20px;
            max-width: 800px; /* Adjust as needed */
            width: 53%; /* Edit the width */
            height: 492px; /* Edit the height */
            border: 2px solid #000000;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: 110px auto 20px auto; /* Center horizontally and adjust margins */
            text-align: left;
        }

        .auto-style6 {
            width: 98%;
            margin-left: 7px;
            margin-top: 7px;
        }
        .auto-style9 {
            text-align: right;
            height: 36px;
            width: 168px;
        }
        .auto-style10 {
            margin-left: 0px;
        }

        .placeholder-bold::placeholder {
            font-weight: bold; /* Make the placeholder text bold */
        }

        .footer {
            background-color: #333;
            color: white;
            padding: 5px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .auto-style12 {
            height: 40px;
        }

        .auto-style13 {
            height: 87px;
        }
        .auto-style14 {
            height: 58px;
        }
        .auto-style15 {
            height: 58px;
            width: 602px;
        }
        .auto-style16 {
            width: 602px;
        }

    </style>
    <title></title>
</head>
<body class="body1">

    <form id="form1" runat="server">

        <div class="auto-style4">
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold">ADD NEW TUBE:</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style13">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="30px" Width="709px" Placeholder="ENTER NAME" onfocus="clearPlaceholder(this)" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style12">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="placeholder-bold" Height="30px" Width="707px" Placeholder="ENTER DONATION AMOUNT" onfocus="clearPlaceholder(this)" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="placeholder-bold" Height="160px" Width="350px" Placeholder="ENTER DESCRIPTION" onfocus="clearPlaceholder(this)"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Add Image:<br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="355px" />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="ADD NEW" Width="164px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>

        <div class="auto-style4">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserDataBase %>" DeleteCommand="DELETE FROM [TubeTable] WHERE [tubeID] = @tubeID" InsertCommand="INSERT INTO [TubeTable] ([tubeName], [tubeDesc], [tubeImage], [tubeAmount], [currentDonation]) VALUES (@tubeName, @tubeDesc, @tubeImage, @tubeAmount, @currentDonation)" SelectCommand="SELECT * FROM [TubeTable]" UpdateCommand="UPDATE [TubeTable] SET [tubeName] = @tubeName, [tubeDesc] = @tubeDesc, [tubeImage] = @tubeImage, [tubeAmount] = @tubeAmount, [currentDonation] = @currentDonation WHERE [tubeID] = @tubeID">
                <DeleteParameters>
                    <asp:Parameter Name="tubeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tubeName" Type="String" />
                    <asp:Parameter Name="tubeDesc" Type="String" />
                    <asp:Parameter Name="tubeImage" Type="String" />
                    <asp:Parameter Name="tubeAmount" Type="Int32" />
                    <asp:Parameter Name="currentDonation" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tubeName" Type="String" />
                    <asp:Parameter Name="tubeDesc" Type="String" />
                    <asp:Parameter Name="tubeImage" Type="String" />
                    <asp:Parameter Name="tubeAmount" Type="Int32" />
                    <asp:Parameter Name="currentDonation" Type="Int32" />
                    <asp:Parameter Name="tubeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="tubeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="tubeID" HeaderText="tubeID" InsertVisible="False" ReadOnly="True" SortExpression="tubeID" />
                    <asp:BoundField DataField="tubeName" HeaderText="tubeName" SortExpression="tubeName" />
                    <asp:BoundField DataField="tubeDesc" HeaderText="tubeDesc" SortExpression="tubeDesc" />
                    <asp:BoundField DataField="tubeImage" HeaderText="tubeImage" SortExpression="tubeImage" />
                    <asp:BoundField DataField="tubeAmount" HeaderText="tubeAmount" SortExpression="tubeAmount" />
                    <asp:BoundField DataField="currentDonation" HeaderText="currentDonation" SortExpression="currentDonation" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>

        </div>
    </form>

    </body>
</html>
