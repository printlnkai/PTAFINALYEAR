<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonationPage.aspx.cs" Inherits="PTAFINALYEAR.DonationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        
        .header1 {
            background-color: dodgerblue;
            padding: 0;
            margin: 0;
            overflow-x: hidden;
            text-align: left;
            width: 100%;
            padding-bottom: 10px;
        }

        .header1 ul {
            margin: 0;
            padding: 0;
        }

        .header1 li {
            display: inline;
            padding-left: 15px;
        }

        .header2 {
          background-color: white;
          padding: 30px;
  
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
          color: black;
          text-decoration: none;
          padding: 10px 20px;
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
        
        .footer {
            background-color: #333;
            color: white;
            padding: 5px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        

        .auto-style1 {
            background-color: #f0f0f0;
            padding: 20px;
            margin: 20px auto;
            max-width: 800px; /* Adjust as needed */;
            width: 80%; /* Edit the width */;
            height: 1330px; /* Edit the height */;
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            text-align: left;
        }

        .auto-style1 p{
            font-size: 35px;
            text-align: center;
        }

        .auto-style2 {
            width: 48%;
            height: 1086px;
        }
        .auto-style6 {
            height: 62px;
        }
                
        .auto-style9 {
            border-top: 3px solid black;
            margin: 20px 0;
        }

        .auto-style10 {
            border-top: 3px solid black;
            margin: 20px 0;
            height: 2px;
        }
        .auto-style18 {
            padding-right: 220px;
            height: 26px;
            text-align: left;
        }

        .auto-style20 {
            height: 59px;
        }
        .auto-style22 {
            height: 26px;
            text-align: left;
        }
        .auto-style23 {
            height: 55px;
        }
        .auto-style24 {
            text-align: left;
        }
        .auto-style25 {
            text-align: center;
            height: 148px;
        }

        .placeholder-bold::placeholder {
        font-weight: bold; /* Make the placeholder text bold */
        }

        .auto-style26 {
            height: 63px;
        }
        .auto-style27 {
            height: 64px;
        }
        .auto-style28 {
            height: 66px;
        }
        .auto-style29 {
            height: 67px;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }


    </style>
    <title></title>
</head>
<body class="body1" style="height: 933px">
    <form id="form1" runat="server">
    <header class="header1">
        <ul>
            <li><a href="C:\Users\User\Downloads\twitter.png">
                <img src="C:\Users\User\Downloads\twitter.png" height="26px" width="28px" alt="Twitter" />
            </a></li>
            <li><a>
                <img src="C:\Users\User\Downloads\instagram.png" height="27px" width="24px" alt="Instagram" />
            </a></li>
            <li><a>
                <img src="C:\Users\User\Downloads\tik-tok.png" height="27px" width="26px" alt="TikTok" />
            </a></li>
        </ul>
    </header>

    <header class="header2">
      <ul>
        <li><a href="FrontPage.aspx">Main</a></li>
        <li><a href="AboutPage.aspx">About</a></li>
        <li><a href="DonationPage.aspx">Join us</a></li>
        <li class="dropdown">
          <a href="#" class="dropbtn">Media</a>
          <div class="dropdown-content">
            <a href="NewsPage.aspx" class="dropdown-link">News</a>
            <a href="ImagePage.aspx" class="dropdown-link">Images</a>
            <a href="VideoPage.aspx" class="dropdown-link">Videos</a>
        </div>
        </li>
        <li><a href="ReachOutPage.aspx">Reach out</a></li>
    
      </ul>
    </header>

    <div class="auto-style1">
    <p>YOU ARE SUPPORTING: <span id="lblTubeName" runat="server"></span></p>
            <asp:HiddenField ID="HiddenSelectedTubeName" runat="server" />
            <asp:HiddenField ID="HiddenSelectedTubeID" runat="server" />
    
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="EMAIL" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="PHONE NUMBER" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="FIRST NAME" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="LAST NAME" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes, I'm sponsorship under my company" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">

                <hr class="auto-style10">

                </td>
            </tr>
             <tr id="companyEmailFields" style="display:none;">
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="COMPANY NAME" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
             <tr id="companyFaxFields" style="display:none;">
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="COMPANY EMAIL" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr id="companyNameFields" style="display:none;">
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="COMPANY FAX" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
             <tr id="companyAddressFields" style="display:none;">
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="placeholder-bold" Height="147px" Width="500px" Placeholder="COMPANY ADDRESS" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
                <td>

        <hr class="auto-style10">

                </td>
            </tr>
            <tr>
                <td class="auto-style18">Donation Amount:</td>
            </tr>
             <tr>
                 <td class="auto-style27">
                     <asp:TextBox ID="TextBox9" runat="server" CssClass="placeholder-bold" Height="29px" Width="500px" Placeholder="Enter Amount" onfocus="clearPlaceholder(this)"></asp:TextBox>
                 </td>
             </tr>
            <tr>
                <td class="auto-style23">

        <hr class="auto-style10">

                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Debit / Credit</asp:ListItem>
                        <asp:ListItem>PayPall</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" Font-Bold="True" Font-Overline="False" ForeColor="White" Height="34px" Text="Donate Now" Width="515px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style24">
        <br />
        <br />

        </div>

    </div>

    <footer class="footer">
        <p>&copy; 2024 UMPSA. All Rights Reserved.l Rights Reserved.</p>
    </footer>


    </form>

    <script>
        function clearPlaceholder(element) {
            if (element.value === element.placeholder) {
                element.value = '';
            }
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#CheckBox1").click(function () {
                if ($(this).is(":checked")) {
                    $("#companyEmailFields").show();
                    $("#companyFaxFields").show();
                    $("#companyNameFields").show();
                    $("#companyAddressFields").show();
                } else {
                    $("#companyEmailFields").hide();
                    $("#companyFaxFields").hide();
                    $("#companyNameFields").hide();
                    $("#companyAddressFields").hide();
                }
            });
        });
    </script>



</body>
</html>
