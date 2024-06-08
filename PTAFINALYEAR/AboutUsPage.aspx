<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUsPage.aspx.cs" Inherits="PTAFINALYEAR.AboutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pacifico&display=swap">

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

        .cropped-image {
          width: 100%; /* Ensure the image covers the entire container horizontally */
          height: auto; /* Let the browser adjust the height while maintaining aspect ratio */
          object-fit: cover; /* Ensure the image covers the container */
          object-position: center top; /* Adjust the position of the image within the container */
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

        .container {
            background-color: #f0f0f0;
            padding: 20px;
            width: 90%; /* Edit the width */
            height: 50%; /* Allow the container to expand with content */
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            text-align: left;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 20px;
            box-sizing: border-box; /* Ensure padding is included in the width */
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 94px;
            text-align: center;
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

     <div class="image-container">
       <img src="IMAGE/SABAH.JPG" alt="Cover Image" class="auto-style1">
     </div>

    <div class="container">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-family: 'Times New Roman', Times, serif; font-size: x-large"><strong>ABOUT US</strong></td>
            </tr>
            <tr>
                <td>
                    <div class="flex flex-grow flex-col max-w-full">
                        <div class="min-h-[20px] text-message flex flex-col items-start whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 juice:w-full juice:items-end overflow-x-auto gap-2" data-message-author-role="assistant" data-message-id="9e84289b-dace-4275-8bac-4606dc985087" dir="auto">
                            <div class="flex w-full flex-col gap-1 juice:empty:hidden juice:first:pt-[3px]">
                                <div class="markdown prose w-full break-words dark:prose-invert dark">
                                    <p style="font-family: Arial, Helvetica, sans-serif; font-size: medium">
                                        The &quot;Fund-YUMP&quot; platform is a dedicated online donation system tailored specifically for Yayasan UMP (UMP Foundation). It serves as a digital hub where individuals and organizations can contribute funds to support various initiatives and programs championed by Universiti Malaysia Pahang Al-Sultan Abdullah (UMP). Fund-YUMP is designed to streamline the donation process, ensuring that contributions are directed towards impactful projects efficiently and transparently. With its user-friendly interface and robust features, Fund-YUMP aims to enhance donor engagement, promote philanthropy, and drive positive change within the UMP community.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-1 flex gap-3 empty:hidden juice:-ml-3">
                    </div>
                </td>
            </tr>
        </table>

    </div>

    <footer class="footer">
        <p>&copy; 2024 UMPSA. All Rights Reserved.</p>
    </footer>

</body>
</html>
