<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminNewsPage.aspx.cs" Inherits="PTAFINALYEAR.AdminNewsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .header2 {
          background-color: #333;
          padding: 20px;
          padding-right: 100px;
          
        }

        .header2 ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
          text-align: right;
        }

        .header2 li {
          display: inline-block;
        }

        .header2 a {
          color: white;
          text-decoration: none;
          padding: 10px 50px;
        }

        /* Dropdown styles */
        .dropdown {
          position: relative;
          display: inline-block;
        }

        .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f9f9f9;
          min-width: 160px;
          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
          z-index: 1;
        }

        .dropdown-content a {
          color: black;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
        }

        .dropdown:hover .dropdown-content {
          display: block;
        }

        .dropdown-link {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* Add hover effect for dropdown links */
        .dropdown-link:hover {
            background-color: #f1f1f1; /* Change the background color on hover */
            color: dodgerblue; /* Change text color on hover */
        }

        .auto-style4 {
            background-color: #f0f0f0;
            padding: 20px;
            max-width: 800px; /* Adjust as needed */;
            width: 90%; /* Edit the width */;
            height: 555px; /* Edit the height */;
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            text-align: left;
            margin-left: 61px;
            margin-top: 52px;
            margin-bottom: 20px;
        }

        .auto-style5 {
            width: 53%;
        }
        .auto-style6 {
            height: 49px;
        }
        .auto-style7 {
            height: 57px;
        }
        .auto-style9 {
            height: 26px;
            text-align: right;
        }
        .auto-style10 {
            height: 266px;
            style:overflow-y: auto;
        }
        .auto-style11 {
            height: 65px;
        }
        .auto-style12 {
            height: 26px;
            width: 120px;
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
        </style>
    <title></title>
</head>
<body class="body1">

    <form id="form1" runat="server">
    <div class="auto-style4">

        <table class="auto-style5">
            <tr>
                <td class="auto-style7" colspan="2">ADD NEWS:</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" Height="31px" Width="685px" Placeholder="ENTER TITTLE" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="236px" Width="681px" Placeholder="ENTER DESCRIPTION" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="placeholder-bold" Height="31px" Width="685px" Placeholder="ENTER AUTHOR FULL NAME" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="692px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="VIEW" Width="164px" PostBackUrl="AdminViewNewsPage.aspx" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="ADD NEW" Width="164px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>

</body>
</html>
