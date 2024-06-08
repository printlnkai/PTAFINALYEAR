<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="PTAFINALYEAR.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            height: 749px;
        }
        .auto-style2 {
            width: 42%;
            margin-left: 30%;
            margin-top: 5%;
            margin-bottom: 5%;
            border-radius: 15px;
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
        .auto-style15 {
            height: 25px;
            width: 134px;
        }
        .auto-style16 {
            height: 25px;
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
        .auto-style20 {
            height: 25px;
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
                    <td class="auto-style10" colspan="3"><strong style="color: #FFFFFF">SIGN UP</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" Height="30px" Width="501px"  Placeholder="E N T E R  F I R S T  N A M E" onfocus="clearPlaceholder(this)"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="30px" Width="501px"  Placeholder="E N T E R  L A S T  N A M E" onfocus="clearPlaceholder(this)"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="placeholder-bold" Height="30px" Width="501px"  Placeholder="E N T E R  E M A I L" onfocus="clearPlaceholder(this)"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="placeholder-bold" Height="30px" Width="501px"  Placeholder="E N T E R  P A S S W O R D" onfocus="clearPlaceholder(this)"></asp:TextBox>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="placeholder-bold" Height="30px" Width="501px"  Placeholder="E N T E R  R E - P A S S W O R D" onfocus="clearPlaceholder(this)"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>I agree with the term</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style24">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Font-Bold="True" Text="Register" Width="92px" Height="37px" OnClick="Button1_Click" />
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
