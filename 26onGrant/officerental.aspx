<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="officerental.aspx.cs" Inherits="_26onGrant.officerental" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>26 on Grant | Office Rental</title>

    <!-- SPECIFIC CSS -->
    <link href="css/tables.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section class="hero_in tours_detail">
            <div class="wrapper">
                <div class="container">
                    <h1 class="fadeInUp"><span></span>Office Renetal</h1>
                </div>
                <span class="magnific-gallery">
                    <a href="img/gallery/tour_list_1.jpg" class="btn_photos" title="Photo title" data-effect="mfp-zoom-in">View photos</a>
                    <a href="img/gallery/tour_list_2.jpg" title="Photo title" data-effect="mfp-zoom-in"></a>
                    <a href="img/gallery/tour_list_3.jpg" title="Photo title" data-effect="mfp-zoom-in"></a>
                </span>
            </div>
        </section>

        <div class="container-fluid margin_80_0">
            <div class="main_title_2">
                <span><em></em></span>
                <h2>Our Office Suite</h2>
                <p>Modern offices catering for 1 to 6 individuals for all your business needs.</p>
            </div>
        </div>

        <div class="bg_color_1">
            <div class="container margin_60_35">
                <div class="row">
                    <div class="col-md-3">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-display1"></i>
                            <h4>Fully Furnished Offices</h4>
                            <p>Furnished offices with desktop PC and lightning fast fibre internet connection.</p>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-wallet"></i>
                            <h4>Common Areas Access</h4>
                            <p>Includes 26 seater boardroom, think tank / training room, kitchen and bathroom.</p>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-wallet"></i>
                            <h4>Prime Address</h4>
                            <p>Offices in Johannesburg north with 24/7 on premises security with secure parking available and access to mailing address.</p>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-note2"></i>
                            <h4>Additional Serivices</h4>
                            <p>Printing services, social media handling, unlimited calls, social media handling and secreterial services at additional cost.</p>
                        </a>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /bg_color_1 -->

        <div class="main_title_2">
            <span><em></em></span>
            <h2>Choose Type Of Office</h2>
        </div>
        <div id="page">
            <div class="container margin_10_35">
                <div class="pricing-container cd-has-margins">
                    <ul class="pricing-list bounce-invert">
                        <li class="popular">
                            <ul class="pricing-wrapper">
                                <li data-type="monthly" class="is-visible">
                                    <header class="pricing-header">
                                        <h2>Office</h2>

                                        <div class="price">
                                            <span class="currency">R</span>
                                            <span class="price-value">3000</span>
                                            <span class="price-duration">mo</span>
                                        </div>
                                    </header>
                                    <!-- /pricing-header -->
                                    <div class="pricing-body">
                                        <ul class="pricing-features">
                                            <li><em>10 boardroom</em> hours</li>
                                            <li><em>10 think tank</em> hours</li>
                                            <li><em>Catering for up to</em> 2 people</li>
                                        </ul>
                                    </div>
                                    <!-- /pricing-body -->
                                    <footer class="pricing-footer">
                                        <a class="select-plan" href="officebooking.aspx?officeType=Office">Book Now</a>
                                    </footer>
                                </li>
                            </ul>
                            <!-- /pricing-wrapper -->
                        </li>
                        <li class="popular">
                            <ul class="pricing-wrapper">
                                <li data-type="monthly" class="is-visible">
                                    <header class="pricing-header">
                                        <h2>Private Office</h2>
                                        <div class="price">
                                            <span class="currency">R</span>
                                            <span class="price-value">5000</span>
                                            <span class="price-duration">mo</span>
                                        </div>
                                    </header>
                                    <!-- /pricing-header -->
                                    <div class="pricing-body">
                                        <ul class="pricing-features">
                                            <li><em>One Time</em> Fee</li>
                                            <li><em>3</em> User</li>
                                            <li><em>Lifetime</em> Availability</li>
                                        </ul>
                                    </div>
                                    <!-- /pricing-body -->
                                    <footer class="pricing-footer">
                                        <a class="select-plan" href="officebooking.aspx?officeType=Private Office">Book Now</a>
                                    </footer>
                                </li>

                            </ul>
                            <!-- /cd-pricing-wrapper -->
                        </li>
                        <li class="popular">
                            <ul class="pricing-wrapper">
                                <li data-type="monthly" class="is-visible">
                                    <header class="pricing-header">
                                        <h2>Co-Working Space</h2>
                                        <div class="price">
                                            <span class="currency">R</span>
                                            <span class="price-value">4000</span>
                                            <span class="price-duration">mo</span>
                                        </div>
                                    </header>
                                    <!-- /pricing-header -->
                                    <div class="pricing-body">
                                        <ul class="pricing-features">
                                            <li><em>10 Boardroom</em> Hours</li>
                                            <li><em>10 ThinkTank hours</em> Hours</li>
                                            <li><em>Catering for up to</em> 7 people</li>
                                        </ul>
                                    </div>
                                    <!-- /pricing-body -->
                                    <footer class="pricing-footer">
                                        <a class="select-plan" href="officebooking.aspx?officeType=Co-Working Space">Book Now</a>
                                    </footer>
                                </li>

                            </ul>
                            <!-- /pricing-list -->
                </div>
                <!-- /pricing-container -->
            </div>
            <!-- /container -->
        </div>
    </main>
</asp:Content>
