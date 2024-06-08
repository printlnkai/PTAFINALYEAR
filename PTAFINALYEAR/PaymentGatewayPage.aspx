<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentGatewayPage.aspx.cs" Inherits="PTAFINALYEAR.PaymentGatewayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1{
            background-color: #f0f0f0;
            padding: 20px;
            max-width: 800px; /* Adjust as needed */;
            width: 35%; /* Edit the width */;
            height: 364px; /* Edit the height */;
            border: 2px solid rgb(0, 0, 0);
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            text-align: left;
            margin-left: 489px;
            margin-top: 118px;
            margin-bottom: 20px;
    
        }

        .auto-style2 {
            width: 123%;
        }
        .auto-style3 {
            height: 66px;
        }

        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 66px;
            width: 288px;
        }
        .auto-style6 {
            height: 26px;
            width: 288px;
        }
        .auto-style7 {
            width: 288px;
        }
        .auto-style8 {
            width: 288px;
            height: 102px;
        }
        .auto-style9 {
            height: 102px;
        }
        .auto-style10 {
            text-align: left;
        }
        .placeholder-bold::placeholder {
            font-weight: bold; /* Make the placeholder text bold */
        }

        .auto-style11 {
            width: 288px;
            height: 37px;
        }
        .auto-style12 {
            height: 37px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div class="auto-style1">

        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Total Amount</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" Height="28px" Width="482px" Placeholder=" CARD NUMBER" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="placeholder-bold" Height="29px" Width="190px" Placeholder=" PHONE NUMBER" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="placeholder-bold" Height="29px" Width="190px" Placeholder=" EXPIRY" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="29px" Width="189px" Placeholder=" CVV" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style7">Cancel</td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" Font-Bold="True" Font-Overline="False" ForeColor="White" Height="34px" Text="Make Payment" Width="195px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

    </div>

    </form>
</body>
</html>
