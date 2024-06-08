<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrontPage.aspx.cs" Inherits="PTAFINALYEAR.FrontPage" %>

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
          width: 100%; /* Set the container to full width */
          height: 200px; /* Set the desired height for your cropped image container */
          overflow: hidden; /* Hide the parts of the image that exceed the container */
        }

        .cropped-image {
          width: 100%; /* Ensure the image covers the entire container horizontally */
          height: auto; /* Let the browser adjust the height while maintaining aspect ratio */
          object-fit: cover; /* Ensure the image covers the container */
          object-position: center top; /* Adjust the position of the image within the container */
        }

        .container {
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            flex-direction: column; /* Optional: If you want the content to stack vertically */
        }

        /* Flex container for tube-repeater */
        .tube-repeater {
            display: flex;
            flex-direction: column; /* Stack items vertically */
            gap: 30px; /* Adjust the space between items */
        }

        /* Styling for the image */
        .tube-image {
            margin-left: 10px; /* Add some margin to the left of the image */
        }

        /* Styling for the details */
        .tube-details {
            flex: 1;
        }

        /* Styling for the title */
        .tube-details h3 {
            margin-top: 0;
            font-size: 30px;
        }

        /* Styling for the link */
        .tube-details a {
            color: black;
            text-decoration: none;
        }

        .tube-box-link {
            display: block;
            text-decoration: none;
            color: inherit;
        }

        .tube-box {
            display: flex; /* Use flexbox */
            align-items: center; /* Align items vertically */
            border: 2px solid #ccc;
            padding: 10px;
            margin: 10px 0;
            transition: background-color 0.3s;
            width: 1200px; /* Make the tube-box full width */
            justify-content: space-between;
        }

        .tube-box:hover {
            background-color: #f5f5f5;
        }

        .progress-container {
            background-color: #f3f3f3;
            border-radius: 4px;
            margin: 10px 0;
            overflow: hidden;
            width: 70%;
            /* Set a specific width for the progress container if needed */
            /* width: 200px; */
        }

        .progress-bar {
            background-color: #4caf50;
            height: 15px; /* Keep the height as needed */
            color: white;
            text-align: center;
           
        }

        .funder-container {
            width: 80%;
            overflow: hidden;
            background-color: #f0f0f0;
            padding: 20px 0;
            position: relative;
            text-align: center;
            display: flex;
            align-items: center;
            background-image: url('path-to-your-image.jpg');
            background-size: cover;
            background-position: center;
            margin: 0 auto;
        }

        .funder-marquee {
            display: flex;
            transition: transform 1s ease-in-out; /* Smoother and slower transition */
            width: calc(100% - 80px);
            overflow: hidden;
        }

        .funder-logo {
            width: 150px;
            height: auto;
            padding: 10px;
        }

        .carousel-btn {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            position: absolute;
            z-index: 1;
        }

        .carousel-btn.left-btn {
            left: 10px;
        }

        .carousel-btn.right-btn {
            right: 10px;
        }

        .carousel-btn:hover {
            background-color: #555;
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
        .footer a{
            color: white;
            text-decoration: none;
        }

    </style>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const marquee = document.querySelector('.funder-marquee');
            const logos = Array.from(marquee.children);
            const leftBtn = document.querySelector('.left-btn');
            const rightBtn = document.querySelector('.right-btn');
            let autoMoveInterval;
            const moveDuration = 5000; // Time in ms for automatic movement, slower

            // Function to start the auto move to the left
            function startAutoMove() {
                autoMoveInterval = setInterval(() => {
                    moveLeft();
                }, moveDuration);
            }

            // Function to stop the auto move
            function stopAutoMove() {
                clearInterval(autoMoveInterval);
            }

            // Function to move logos to the left
            function moveLeft() {
                marquee.style.transition = 'transform 1s ease-in-out'; // Smooth transition
                marquee.style.transform = `translateX(-${logos[0].offsetWidth}px)`;
                marquee.addEventListener('transitionend', () => {
                    marquee.appendChild(marquee.firstElementChild);
                    marquee.style.transition = 'none';
                    marquee.style.transform = 'translateX(0)';
                    requestAnimationFrame(() => {
                        marquee.style.transition = 'transform 1s ease-in-out';
                    });
                }, { once: true });
            }

            // Function to move logos to the right
            function moveRight() {
                marquee.style.transition = 'transform 1s ease-in-out'; // Smooth transition
                marquee.style.transform = `translateX(${logos[0].offsetWidth}px)`;
                marquee.addEventListener('transitionend', () => {
                    marquee.insertBefore(marquee.lastElementChild, marquee.firstElementChild);
                    marquee.style.transition = 'none';
                    marquee.style.transform = 'translateX(0)';
                    requestAnimationFrame(() => {
                        marquee.style.transition = 'transform 1s ease-in-out';
                    });
                }, { once: true });
            }

            leftBtn.addEventListener('click', () => {
                stopAutoMove();
                moveLeft();
                startAutoMove();
            });

            rightBtn.addEventListener('click', () => {
                stopAutoMove();
                moveRight();
                startAutoMove();
            });

            // Start the auto move when the page loads
            startAutoMove();

            // Optional: Pause auto move on hover and resume on leave
            marquee.addEventListener('mouseenter', stopAutoMove);
            marquee.addEventListener('mouseleave', startAutoMove);
        });
    </script>
    <title></title>
</head>
<body class="body1" style="height: 1619px">
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
      <img src="IMAGE/SABAH.JPG" alt="Cover Image" class="cropped-image">
    </div>

       <div class="container">
        <div class="tube-repeater">
            <asp:Repeater ID="TubeRepeater" runat="server">
                <ItemTemplate>
                    <a href='<%# "DonationPage.aspx?tubeID=" + Eval("tubeID") %>' class="tube-box-link">
                        <div class="tube-box">
                            <div class="tube-details">
                                <h3><%# Eval("tubeName") %></h3>
                                <p>Description: <%# Eval("tubeDesc") %></p>
                                <!-- Progress Bar -->
                                <div class="progress-container">
                                    <div class="progress-bar" style="width: <%# CalculateProgress(Eval("currentDonation"), Eval("tubeAmount")) %>%"></div>
                                </div>
                            </div>
                            <div class="tube-image">
                                <asp:Image ID="TubeImage" runat="server" ImageUrl='<%# Eval("tubeImage") %>' Width="180px" Height="180px" />
                            </div>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

   <div class="funder-container">
        <button class="carousel-btn left-btn">&#9664;</button> <!-- Left Button -->
        <div class="funder-marquee">
            <a href="https://www.funder1.com" target="_blank"><img src="https://www.thesundaily.my/binrepository/665x432/0c0/0d0/none/11808/NBVO/umw_1235132_20200625211122.jpg" alt="Funder 1 Logo" class="funder-logo" /></a>
            <a href="https://www.funder2.com" target="_blank"><img src="https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0020/7280/brand.gif?itok=4OeZA5sn" alt="Funder 2 Logo" class="funder-logo" /></a>
            <a href="https://www.funder3.com" target="_blank"><img src="https://companieslogo.com/img/128/5183.KL-02b6b326.png?t=1666508346" alt="Funder 3 Logo" class="funder-logo" /></a>
            <a href="https://www.funder4.com" target="_blank"><img src="https://companieslogo.com/img/128/MLYBY-58fa4af5.png?t=1654367173" alt="Funder 4 Logo" class="funder-logo" /></a>
            <a href="https://www.funder4.com" target="_blank"><img src="https://companieslogo.com/img/128/TNABY-4772ba31.png?t=1660538115" alt="Funder 4 Logo" class="funder-logo" /></a>
            <a href="https://www.funder4.com" target="_blank"><img src="https://companieslogo.com/img/128/5819.KL-7fc4907c.png?t=1666508722" alt="Funder 4 Logo" class="funder-logo" /></a>
            <a href="https://www.funder4.com" target="_blank"><img src="https://companieslogo.com/img/128/5285.KL-341a504e.png?t=1694603201" alt="Funder 4 Logo" class="funder-logo" /></a>
            <a href="https://www.funder4.com" target="_blank"><img src="https://companieslogo.com/img/128/5296.KL-b6ade19f.png?t=1694608207" alt="Funder 4 Logo" class="funder-logo" /></a>
            <!-- Add more logos as needed -->
        </div>
        <button class="carousel-btn right-btn">&#9654;</button> <!-- Right Button -->
    </div>

    <footer class="footer">
        <a href="AdminLogin.aspx" class="footer-link">
            <p>&copy; 2024 UMPSA. All Rights Reserved.</p>
        </a>
    </footer>

    
 </body>
</html>
