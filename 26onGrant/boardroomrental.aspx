<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="boardroomrental.aspx.cs" Inherits="_26onGrant.boardroomrental" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>26 on Grant | Boardroom</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

        <section class="hero_in tours_detail">
            <div class="wrapper">
                <div class="container">
                    <h1 class="fadeInUp"><span></span>Boardroom Hire</h1>
                </div>
                <span class="magnific-gallery">
                    <a href="img/gallery/tour_list_1.jpg" class="btn_photos" title="Photo title" data-effect="mfp-zoom-in">View photos</a>
                    <a href="img/gallery/tour_list_2.jpg" title="Photo title" data-effect="mfp-zoom-in"></a>
                    <a href="img/gallery/tour_list_3.jpg" title="Photo title" data-effect="mfp-zoom-in"></a>
                </span>
            </div>
        </section>
    </main>

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
            <p class="text-center add_top_60">
                <input style="padding-top: 20px; text-align:center" id="btnBoardroombooking" runat="server" onserverclick="btnBoardroombooking_ServerClick" type="button" class="btn_1 rounded" value="Boardroom Booking" />
            </p>
        </div>
        <!-- /container -->
    </div>
    <!-- /bg_color_1 -->

</asp:Content>
