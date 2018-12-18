<%@ Page Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="register.aspx.cs" Inherits="_26onGrant.register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>26 on Grant | Register</title>

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

<body id="register_bg">
    <form id="form1" runat="server" autocomplete="off">
        <nav id="menu" class="fake_menu"></nav>
        <div id="preloader">
            <div data-loader="circle-side"></div>
        </div>
        <div id="login">
            <aside>
                <figure>
                    <a href="index-2.html">
                        <img src="img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky"></a>
                </figure>
                <div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>First Name</label>
                                <input class="form-control form-align" id="txtName" type="text" runat="server">
                                <i class="ti-user form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input class="form-control form-align" id="txtLastName" type="text" runat="server">
                                <i class="ti-user form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control form-align" id="txtEmail" type="email" runat="server">
                                <i class="icon_mail_alt form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input class="form-control form-align" type="text" id="txtCell" runat="server">
                                <i class="ti-mobile form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input class="form-control form-align" type="password" id="txtPass" runat="server">
                                <i class="icon_lock_alt form-input-icon"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Company Name</label>
                                <input class="form-control form-align" type="text" id="txtBusName" runat="server">
                                <i class="ti-bag form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Type Of Company</label>
                                <input class="form-control form-align" type="text" id="txtBusType" runat="server">
                                <i class="ti-info-alt form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Company Registration Number</label>
                                <input class="form-control form-align" type="text" id="txtBusRegNum" runat="server">
                                <i class="ti-info-alt form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Vat Number</label>
                                <input class="form-control form-align" type="text" id="txtVatNum" runat="server">
                                <i class="ti-info-alt form-input-icon"></i>
                            </div>
                            <div class="form-group">
                                <label>Confirm password</label>
                                <input class="form-control form-align" type="password" id="txtConfirmPass" runat="server">
                                <i class="icon_lock_alt form-input-icon"></i>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <input type="button" runat="server" id="btnRregister" onserverclick="btnRregister_ServerClick" class="btn_1 rounded full-width add_top_30" value="Register Now" />
                        <div class="text-center add_top_10" style="margin-bottom: 60px">Already have an acccount? <strong><a href="login.aspx">Sign In</a></strong></div>
                    </div>
                </div>
                <div class="copy">© 2018 26 on Grant</div>
            </aside>
        </div>

        <!-- COMMON SCRIPTS -->
        <script src="js/jquery-2.2.4.min.js"></script>
        <script src="js/common_scripts.js"></script>
        <script src="js/main.js"></script>
        <script src="assets/validate.js"></script>

        <!-- SPECIFIC SCRIPTS -->
        <script src="js/pw_strenght.js"></script>
    </form>
</body>
</html>
