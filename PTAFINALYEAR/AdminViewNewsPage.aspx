<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewNewsPage.aspx.cs" Inherits="PTAFINALYEAR.AdminViewNewsPage" %>

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

        .footer {
            background-color: #333;
            color: white;
            padding: 5px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .auto-style4 {
            width: 1174px; /* Adjust width */;
            height: 502px; /* Adjust height */;
            background-color: darkgrey; /* Box color */;
            position: absolute;
            border-radius: 12px;
            top: 53%;
            left: 52%;
            transform: translate(-50%, -50%);
            overflow-y: scroll; /* Enable vertical scroll */
        }

    </style>
    <title></title>
</head>
<body class="body1">

    <form id="form1" runat="server">

    </form>

   

    
</body>
</html>
