<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Password Reset</title>

        <!-- Add Bootstrap CSS link -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h1 class="text-center">Reset Password</h1>

                    <form action="OtpVerification" method="post">

                        <div class="mb-3">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="enter you email" required>
                        </div>

                        <button type="submit" id="getOTP" class="btn btn-primary">Get OTP</button>
<!--                    </form>
                    <form action="OtpVerification" method="post">-->
                        <div id="otpSection" style="display: none;">
                            <div class="mb-3">
                                <label for="otp" class="form-label">Enter OTP:</label>
                                <input type="text" class="form-control" id="otp" name="otp" required>
                            </div>
                        </div>

                        <button type="submit" id="resetPassword" class="btn btn-success" style="display: none;">Reset Password</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Add Bootstrap JS and Popper.js (for Bootstrap functionality) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            document.getElementById("getOTP").addEventListener("click", function () {
                // Simulate sending OTP to the user's email (you should implement this part on your server)
                // For this example, we'll just show the OTP field and submit button
                document.getElementById("otpSection").style.display = "block";
                document.getElementById("resetPassword").style.display = "block";
            });
        </script>
    </body>
</html>
