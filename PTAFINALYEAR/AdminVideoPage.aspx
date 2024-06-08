<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminVideoPage.aspx.cs" Inherits="PTAFINALYEAR.AdminVideoPage" %>

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
            width: 39%; /* Edit the width */;
            height: 341px; /* Edit the height */;
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            text-align: left;
            margin-left: 70px;
            margin-top: 157px;
            margin-bottom: 20px;
            
        }

        .auto-style5 {
            width: 2px; /* Adjust the width as needed */;
            height: 70%; /* Make the line cover the full height */;
            background-color: black; /* Color of the line */;
            position: fixed; /* Fixed position to stay at the same place */;
            top: 139px; /* Position from the top of the viewport */
            left: 49%; /* Position in the center horizontally */
            transform: translateX(-50%); /* Center the line horizontally */
        }

        .auto-style6 {
            width: 82%;
            margin-left: 7px;
            margin-top: 3px;
            height: 329px;
        }
        .auto-style8 {
            width: 358px;
            height: 80px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        
        .auto-style19 {
            height: 41px;
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
            height: 52px;
        }
        .auto-style22 {
            height: 66px;
        }

    </style>
    <title></title>
</head>
<body class="body1">

    <form id="form1" runat="server">

    <div class="auto-style4">
        <table class="auto-style6">
            <tr>
                <td class="auto-style19">ADD NEW VIDEO:</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="placeholder-bold" Height="30px" Width="529px"  Placeholder="ENTER TITTLE" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="placeholder-bold" Height="30px" Width="529px" Placeholder="ENTER LINK" onfocus="clearPlaceholder(this)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    Image CoverPage<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="455px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="None" CssClass="auto-style10" Font-Bold="True" Font-Strikeout="False" ForeColor="White" Height="32px" Text="ADD NEW" Width="164px" OnClick="Button1_Click" />
                </td>
            </tr>
            </table>
    </div>
    </form>

    <footer class="footer">
        <p>&copy; 2024 UMPSA. All Rights Reserved.</p>
    </footer>


</body>

</html>
