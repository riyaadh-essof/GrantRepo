<%@ Page Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="login.aspx.cs" Inherits="_26onGrant.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>26 on Grant | Login</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/vendors.css" rel="stylesheet">
    <link href="css/form.css" rel="stylesheet" />

    <!-- ALTERNATIVE COLORS CSS -->
    <link href="#" id="colors" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
</head>

<body id="login_bg">
    <form id="form1" runat="server" autocomplete="off">
        <nav id="menu" class="fake_menu"></nav>

        <div id="preloader">
            <div data-loader="circle-side"></div>
        </div>
        <!-- End Preload -->

        <div id="login">
            <aside>
                <figure>
                    <a href="index-2.html">
                        <img src="img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky"></a>
                </figure>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control form-align" name="email" id="txtEmail" runat="server">
                    <i class="icon_mail_alt form-input-icon"></i>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control form-align" name="password" id="txtPassword" runat="server">
                    <i class="icon_lock_alt form-input-icon"></i>
                </div>
                <div class="clearfix add_bottom_30">
                    <div class="checkboxes float-left">
                        <label class="container_check">
                            Remember me
						  <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <div class="float-right mt-1"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
                </div>
                <input class="btn_1 rounded full-width" id="btnLogin" type="button" onserverclick="btnLogin_ServerClick" value="Login" runat="server" />
                <div class="text-center add_top_10" style="margin-bottom: 60px">New to 26 on Grant? <strong><a href="register.aspx">Sign up</a></strong></div>
                <div class="copy">© 2018 26 on Grant</div>
            </aside>
        </div>
        <!-- /login -->

        <!-- COMMON SCRIPTS -->
        <script src="js/jquery-2.2.4.min.js"></script>
        <script src="js/common_scripts.js"></script>
        <script src="js/main.js"></script>
        <script src="assets/validate.js"></script>
    </form>
</body>
</html>
