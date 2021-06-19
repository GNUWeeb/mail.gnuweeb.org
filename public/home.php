<?php
// SPDX-License-Identifier: GPL-2.0


require_once __DIR__."/../init/web.php";

sess_start();

if (!isset($_SESSION["user"])) {
	header("Location: login.php?ref=home&w=".rstr(32));
	exit;
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>GNUWeeb Mail</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/asset/css/bootstrap.min.css">
        <script src="/asset/js/jquery.min.js"></script>
        
        <link rel="stylesheet" href="font-awesome.min.css">
    </head>

    <body>
        <div class="container-fluid max-vh-100">
            <div class = "row position-fixed w-100 h-100">
                <div class = "col-12 col-lg-3 d-none d-lg-block bg-light border-right min-vh-100">
                    <div class = "px-4 pt-4">
                        <h2>GNUWeeb</h2>
                        <p>Some quote here</p>
                    </div>

                    <div class = "list-group list-group-flush overflow-auto col-sm vh-100 sticky-top p-0 py-4 user-select-none" id = "side-nav">
                        <li class = "list-group-item active" data-onclick = "#home">Home</li>
                        <li class = "list-group-item" data-onclick = "#change-password">Change Password</li>
                        <li class = "list-group-item" data-onclick = "#mail-config">Mail client config</li>
                        <li class = "list-group-item text-danger" data-onclick = "#logout">Logout</li>
                    </div>

                    <span>GNUWeeb 2021</span>
                </div>

                <div class = "col-12 col-lg-9 p-4" style = "overflow-y: auto; height: 100%;">
                    <div id = "home" class = "tab">
                        <h2>Hi <?php echo htmlspecialchars($_SESSION["user"]["first_name"]); ?>!</h2>
                        <p>This is just emergency web view to change password, it is still under development.</p>
                    </div>

                    <div id = "change-password" class = "tab">
                        <h2>Change Password</h2>

                        <form method = "post" action = "passwd.php">
                            <div class = "mb-4">
                                <label>Old password</label>
                                <div class = "input-group">
                                    <input class = "form-control" type = "password">
                                    <div class = "input-group-append">
                                        <button type = "button" class = "btn btn-primary" onclick = "showPassword(this)">Show</button>
                                    </div>
                                </div>

                                <small>Lost your password? Contact @Mysticial on GNUWeeb.</small>
                            </div>

                            <div class = "mb-4">
                                <label>New password</label>
                                <div class = "input-group">
                                    <input class = "form-control" type = "password">
                                    <div class = "input-group-append">
                                        <button type = "button" class = "btn btn-primary" onclick = "showPassword(this)">Show</button>
                                    </div>
                                </div>
                            </div>

                            <div class = "mb-4">
                                <label>Retype new password</label>
                                <div class = "input-group">
                                    <input class = "form-control" type = "password">
                                    <div class = "input-group-append">
                                        <button type = "button" class = "btn btn-primary" onclick = "showPassword(this)">Show</button>
                                    </div>
                                </div>
                            </div>

                            <input class = "btn btn-primary float-right" type = "submit" value = "Change">
                        </form>
                    </div>

                    <div id = "mail-config" class = "tab">
                        <h2>Mail client config</h2>
                        <pre style = "text-align: left;">
[Incoming]
Server	: mail1.gnuweeb.org
Protocol: IMAP
SSL/Port: 143 for STARTTLS
    : 993 for SSL/TLS
Auth	: Normal Password

[Outgoing]
Server	: mail1.gnuweeb.org
Protocol: SMTP
SSL/Port: 587 for STARTTLS
    : 465 for SSL/TLS
Auth	: Normal Password
                        </pre>

                        <button class = "btn btn-primary">Copy</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $('.tab').hide(0);
            $('#home').show(0);

            $('.list-group-item').on('click', function() {
                onclickData = $(this).attr('data-onclick');

                if (onclickData != '#logout') {
                    $('.tab').hide(0);
                    $(onclickData).show(0);

                    $('.list-group-item').removeClass('active');
                    $(this).addClass('active');
                } else {
                    con = confirm("Are you sure want to logout?");
                    if (con) {
                        window.location.href = 'logout.php';
                    } else {
                        $('li[data-onclick="#home"]').click();
                    }
                }
            });

            function showPassword(self) {
                inputForm = $(self).parent().parent().children('.form-control');
                if (inputForm.attr('type') == 'password') {
                    inputForm.attr('type', 'text');
                    $(self).html('Hide');
                } else {
                    inputForm.attr('type', 'password');
                    $(self).html('Show');
                }
            }
        </script>
    </body>
</html>
