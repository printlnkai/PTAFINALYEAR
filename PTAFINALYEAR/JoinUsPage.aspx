<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JoinUsPage.aspx.cs" Inherits="PTAFINALYEAR.JoinUsPage" %>

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

        .image-container {
          width: 100%;
          /* Set the desired height for your cropped image */
          height: 300px; /* Adjust this value as needed */
          overflow: hidden; /* Hide the parts of the image that exceed the container */
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
    <header class="header1">
        <ul>
            <li><a href="C:\Users\User\Downloads\twitter.png">
                <img src="IMAGE/full-m2H7G6G6K9m2K9A0.png" height="26px" width="28px" alt="Twitter" />
            </a></li>
            <li><a>
                <img src="IMAGE/toppng.com-white-instagram-icon-instagram-logo-instagram-instagram-icon-white-306x304.png" height="27px" width="24px" alt="Instagram" />
            </a></li>
            <li><a>
                <img src="IMAGE/pngaaa.com-4768645.png" height="27px" width="26px" alt="TikTok" />
            </a></li>
        </ul>
    </header>

    <header class="header2">
      <ul>
        <li><a href="FrontPage.aspx">Main</a></li>
        <li><a href="AboutPage.aspx">About</a></li>
        <li><a href="JoinUsPage.aspx">Join us</a></li>
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

    <div class="image-container">
      <img src="C:\Users\User\OneDrive\Documents\SEM 3\WEB APPLICATION\PTAFINALYEAR\PTAFINALYEAR\IMAGE\DSC_2362.JPG" alt="Cover Image" class="cropped-image">
    </div>

    <footer class="footer">
        <p>&copy; 2024 UMPSA. All Rights Reserved.</p>
    </footer>
</body>
</html>
