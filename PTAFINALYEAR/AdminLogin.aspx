<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="PTAFINALYEAR.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            height: 671px;
        }
        .auto-style2 {
            width: 42%;
            margin-left: 30%;
            margin-top: 10%;
            margin-bottom: 10%;
            border-radius: 15px;
            height: 450px;
        }
        .auto-style3 {
            height: 26px;
            width: 149px;
        }
        .auto-style4 {
            height: 26px;
            width: 134px;
        }
        .auto-style10 {
            text-align: center;
            font-size: xx-large;
            height: 108px;
        }
        .auto-style11 {
            height: 48px;
            width: 134px;
        }
        .auto-style12 {
            height: 48px;
            width: 149px;
        }
        .auto-style13 {
            height: 50px;
            width: 134px;
        }
        .auto-style14 {
            height: 50px;
            width: 149px;
        }
        .auto-style17 {
            height: 26px;
            width: 513px;
        }
        .auto-style18 {
            height: 48px;
            width: 513px;
        }
        .auto-style19 {
            height: 50px;
            width: 513px;
        }
        .auto-style21 {
            height: 29px;
            width: 134px;
        }
        .auto-style22 {
            height: 29px;
            width: 513px;
        }
        .auto-style23 {
            height: 29px;
            width: 149px;
        }
        .auto-style24 {
            height: 29px;
            width: 513px;
            text-align: right;
        }
        .auto-style25 {
            margin-left: 0px;
        }
        .auto-style26 {
            height: 9px;
            width: 513px;
            text-align: right;
            font-size: small;
        }
        .auto-style27 {
            height: 9px;
            width: 134px;
        }
        .auto-style28 {
            height: 9px;
            width: 149px;
        }
        .placeholder-bold::placeholder {
            font-weight: bold; /* Make the placeholder text bold */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2" style="background-color: #427bbd">
                <tr>
                    <td class="auto-style10" colspan="3"><strong style="color: #FFFFFF">LOG IN</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" onfocus="clearPlaceholder(this)" Placeholder="E M A I L" BorderStyle="Inset" Font-Bold="False" Font-Names="Bahnschrift Light" Font-Size="Medium" ForeColor="#999999" Height="27px" Width="502px"></asp:TextBox>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" onfocus="clearPlaceholder(this)" Placeholder="P A S S W O R D" BorderStyle="Inset" Font-Bold="False" Font-Names="Bahnschrift Light" Font-Size="Medium" ForeColor="#999999" Height="27px" Width="502px"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style26" style="color: #0000FF; text-decoration: underline">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminRegister.aspx">Doesn&#39;t have account? Register</asp:HyperLink>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style24">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Font-Bold="True" Text="Log In" Width="92px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>
