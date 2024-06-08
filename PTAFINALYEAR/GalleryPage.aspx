<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GalleryPage.aspx.cs" Inherits="PTAFINALYEAR.GalleryPage" %>

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

        .footer {
            background-color: #333;
            color: white;
            padding: 5px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
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

        .Text1 {
          font-size: 50px; /* Adjust the font size as needed */
          font-family: 'Pacifico', cursive; /* Use the Pacifico font */
          text-align: center; /* Align the text to the center */
          line-height: 1; /* Set the line height to reduce spacing */
        }

        .auto-style1 {
            width: 100%; /* Ensure the image covers the entire container horizontally */;
            height: 824px; /* Let the browser adjust the height while maintaining aspect ratio */
            object-fit: cover; /* Ensure the image covers the container */;
            object-position: center ; /* Adjust the position of the image within the container */
            position: center;
        }

        .gallery-item {
            display: flex;
            justify-content: space-between; /* Ensure even spacing between image and text */
            align-items: center; /* Vertically center the content */
            border: 1px solid #ccc;
            border-radius: 15px; /* Tube box design */
            margin: 20px 0;
            padding: 20px;
            width: 100%;
            box-sizing: border-box; /* Ensure padding is included in the width */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.3s ease; /* Animation for hover effect */
        }

        .gallery-item:hover {
            transform: translateY(-10px); /* Hover effect */
        }

        .gallery-image {
            flex-shrink: 0; /* Prevent the image from shrinking */
            margin-left: 20px; /* Add space between text and image */
        }

        .gallery-image img {
            max-width: 200px; /* Adjust image width as needed */
            height: auto;
            border-radius: 15px;
        }

        .gallery-details {
            flex-grow: 1; /* Allow the text to take up remaining space */
            margin-right: 20px; /* Add space between text and image */
        }

        .gallery-details h3 {
            margin: 0;
            font-size: 24px;
        }

        .gallery-details p {
            margin: 10px 0;
            font-size: 16px;
            color: #333;
        }

        .gallery-details small {
            display: block;
            margin-top: 10px;
            color: #777;
        }

        .container {
            background-color: #f0f0f0;
            padding: 20px;
            width: 90%; /* Edit the width */
            height: auto; /* Allow the container to expand with content */
            border: 1px solid #ccc;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
            text-align: left;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 20px;
            box-sizing: border-box; /* Ensure padding is included in the width */
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
            <a href="GalleryPage.aspx" class="dropdown-link">Images</a>
            <a href="VideoPage.aspx" class="dropdown-link">Videos</a>
        </div>
        </li>
        <li><a href="ReachOutPage.aspx">Reach out</a></li>

      </ul>
    </header>

     <div class="image-container">
       <img src="IMAGE/SABAH.JPG" alt="Cover Image" class="auto-style1">
     </div>

    <p class="Text1">Some Of Our Precious </p>
    <p class="Text1">Moment Captured</p>

    <div class="container">
        <asp:Repeater ID="GalleryRepeater" runat="server">
            <ItemTemplate>
                <div class="gallery-item">
                    <div class="gallery-details">
                        <h3><%# Eval("galleryTittle") %></h3>
                        <p><%# Eval("galleryLink") %></p>
                    </div>
                    <div class="gallery-image">
                        <img src='<%# Eval("galleryImage") %>' alt="Gallery Image" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
       

    


    <footer class="footer">
        <p>&copy; 2024 UMPSA. All Rights Reserved.</p>
    </footer>

</body>
</html>
