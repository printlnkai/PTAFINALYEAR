<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="PTAFINALYEAR.testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Scrolling Headers</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif; /* Set a font for better visibility */
    }

    /* Style for Header 1 */
    .header1 {
      background-color: dodgerblue;
      padding: 10px 0; /* Added padding top and bottom */
      text-align: left;
      width: 100%;
      position: relative; /* Initial position relative */
      z-index: 1000; /* Ensure it's above other content */
    }

    .header1 ul {
      margin: 0;
      padding: 0;
    }

    .header1 li {
      display: inline;
      padding-left: 15px;
    }

    /* Style for Header 2 */
    .header2 {
      background-color: white;
      padding: 20px;
      position: fixed; /* Fixed position for Header 2 */
      top: 0;
      width: 100%;
      z-index: 1000; /* Ensure it's above other content */
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

    /* Padding for content to prevent it from being hidden behind headers */
    .content {
      padding: 20px;
      margin-top: 100px; /* Adjust based on header height */
    }
  </style>
</head>
<body>

  <header class="header1" id="header1">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </header>

  <header class="header2" id="header2">
    <ul>
      <li><a href="#">Login</a></li>
      <li><a href="#">Register</a></li>
    </ul>
  </header>

  <div class="content">
    <!-- Your page content here -->
    <h1>Welcome to My Website</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu eros vel odio tempor fermentum nec ac metus. Suspendisse potenti.</p>
    <!-- Add more content here -->
  </div>

  <script>
    // Get the header elements
    const header1 = document.getElementById('header1');
    const header2 = document.getElementById('header2');

    // Track the scroll event
    window.addEventListener('scroll', () => {
      // Get the scroll position
      const scrollPosition = window.scrollY || document.documentElement.scrollTop;

      // Check if the scroll position is greater than a threshold (e.g., 100px)
      if (scrollPosition > 100) {
        // If scrolled, make header1 scroll with the page and hide header2
        header1.style.position = 'fixed';
        header1.style.top = '0';
        header2.style.display = 'none';
      } else {
        // If not scrolled, reset header1 to its initial state and show header2
        header1.style.position = 'relative';
        header2.style.display = 'block';
      }
    });
  </script>

</body>
</html>
