<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <head>
        <title>My Simple Website</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <h1>Welcome to My Website!</h1>
        <p>This is a simple website created using HTML and CSS.</p>
        <footer>
            <p>© 2023 My Simple Website</p>
        </footer>
        <script src="script.js"></script>
        <!-- Add your JavaScript code here -->
        <script>
            // Example JavaScript function
            function displayMessage() {
                alert('Welcome to my website!');
            }

            // Call the function when the page loads
            window.onload = displayMessage;

            // Add an additional example JavaScript function
            function changeBackgroundColor() {
                document.body.style.backgroundColor = 'lightblue';
            }

            // Call the function to change the background color
            window.onload = function() {
                displayMessage();
                changeBackgroundColor();
                // Additional functionality can be added here in the future
            };
            // Call the changeBackgroundColor function after a delay for demonstration
            setTimeout(changeBackgroundColor, 2000); // Change background color after 2 seconds
            // Additional functionality can be added here in the future

            // Example of another functionality that can be implemented
            function changeTextColor() {
                document.body.style.color = 'darkblue';
            }

            // Call the changeTextColor function after another delay
            setTimeout(changeTextColor, 4000); // Change text color after 4 seconds
            // It might be useful to also call displayMessage again to reinforce the welcome message
            setTimeout(displayMessage, 6000); // Show welcome message again after 6 seconds
            // Consider adding more interactivity or functionality
            function changeFontSize() {
                document.body.style.fontSize = 'larger';
            }
            // Call the changeFontSize function after another delay
            setTimeout(changeFontSize, 8000); // Change font size after 8 seconds
            // Call displayMessage again to reinforce the welcome message
            setTimeout(displayMessage, 6000); // Show welcome message again after 6 seconds
            // Additional functionality can be added here in the future
            function changeTextColor() {
                document.body.style.color = 'darkblue';
            }
            // Call the changeTextColor function after another delay
            setTimeout(changeTextColor, 4000); // Change text color after 4 seconds
            // It might be useful to also call displayMessage again to reinforce the welcome message
            setTimeout(displayMessage, 6000); // Show welcome message again after 6 seconds
            // Consider adding more interactivity or functionality
            function changeFontSize() {
                document.body.style.fontSize = 'larger';
            }
            // Call the changeFontSize function after another delay
            setTimeout(changeFontSize, 8000); // Change font size after 8 seconds
            // Call displayMessage again to reinforce the welcome message
            setTimeout(displayMessage, 6000); // Show welcome message again after 6 seconds
            // Remove duplicate function calls
            setTimeout(changeTextColor, 4000); // Change text color after 4 seconds
            // Ensure changeFontSize is only set once
        </script>
    </body>
</html>
