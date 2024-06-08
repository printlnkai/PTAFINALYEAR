<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGalleryPage.aspx.cs" Inherits="PTAFINALYEAR.AdminImagePage" %>

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
            height: 393px; /* Edit the height */
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
        
        .auto-style13 {
            height: 63px;
        }
        .auto-style17 {
            width: 506px;
            height: 36px;
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

        .auto-style21 {
            height: 97px;
        }
        .auto-style22 {
            height: 64px;
        }

        .auto-style23 {
            width: 450px;
        }
        .auto-style25 {
            font-size: small;
        }

        .auto-style26 {
            width: 772px;
        }

        .auto-style27 {
            background-color: #f0f0f0;
            padding: 20px;
            max-width: 800px; /* Adjust as needed */;
            width: 63%; /* Edit the width */
            height: 596px; /* Edit the height */
            border: 2px solid #000000;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: 110px auto 20px auto;
/* Center horizontally and adjust margins */text-align: left;
        }
        .auto-style28 {
            width: 506px;
        }
        .auto-style29 {
            height: 57px;
        }
        .auto-style30 {
            height: 79px;
        }
        .auto-style31 {
            width: 98%;
            margin-left: 7px;
            margin-top: 3px;
            height: 85px;
        }
        .auto-style32 {
            height: 58px;
            font-size: xx-large;
        }
        .auto-style33 {
            height: 57px;
            font-size: xx-large;
        }

    </style>
    <title></title>
</head>
<body class="body1">

    <form id="form1" runat="server">

    <div class="auto-style4">
        <table class="auto-style6">
            <tr>
                <td class="auto-style33" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold;">ADD NEW IMAGE:</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style13">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" Height="30px" Width="599px"  Placeholder="ENTER TITTLE" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="30px" Width="599px"  Placeholder="ENTER LINK" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2" style="font-family: Arial, Helvetica, sans-serif">
                    <span class="auto-style25">Add Cover Image</span><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="503px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="ADD NEW" Width="164px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>

    <div class="auto-style4">
        <table class="auto-style6">
            <tr>
                <td class="auto-style33" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold"><strong>ADD NEW VIDEO:</strong></td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2">
                    
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="placeholder-bold" Height="30px" Width="606px" Placeholder="ENTER TITTLE" onfocus="clearPlaceholder(this)"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style22" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="placeholder-bold" Height="30px" Width="605px" Placeholder="ENTER LINK" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22" colspan="2" style="font-family: Arial, Helvetica, sans-serif">
                    <span class="auto-style25">Add Cover Image</span><br />
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="32px" Width="601px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="ADD NEW" Width="164px" OnClick="Button2_Click" />
                </td>
            </tr>
            </table>
        </div>

    <div class="auto-style27">
        <table class="auto-style26">
            <tr>
                <td class="auto-style32" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold">ADD NEWS:</td>
            </tr>
            <tr>
                <td class="auto-style31" colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="placeholder-bold" Height="31px" Width="749px" Placeholder="ENTER TITTLE" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="placeholder-bold" Height="236px" Width="745px" Placeholder="ENTER DESCRIPTION" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="placeholder-bold" Height="31px" Width="748px" Placeholder="ENTER AUTHOR FULL NAME" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2">
                    <asp:FileUpload ID="FileUpload3" runat="server" Height="32px" Width="752px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Button ID="Button3" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="VIEW" Width="164px" PostBackUrl="AdminViewNewsPage.aspx" OnClick="Button3_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button4" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="ADD NEW" Width="164px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </div>

    </form>

    </body>
</html>
