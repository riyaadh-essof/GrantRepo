<%@ Page Title="" ClientIDMode="Static" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="virtualoffice.aspx.cs" Inherits="_26onGrant.virtualoffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>26 on Grant | Virtual Office</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section class="hero_in tours_detail">
            <div class="wrapper">
                <div class="container">
                    <h1 class="fadeInUp"><span></span>Virtual Office</h1>
                </div>
            </div>
        </section>

        <div class="container-fluid margin_80_0">
            <div class="main_title_2">
                <span><em></em></span>
                <h2>Our Virtual Office Service</h2>
                <p>Working from home while having access to a corporate address.</p>
            </div>
        </div>
        <div class="bg_color_1">
            <div class="container margin_60_35">
                <div class="row">
                    <div class="col-md-4">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-map-marker"></i>
                            <h4>Businees Address</h4>
                            <p>Access to a coporate address at 26 on Grant at a minimal cost of R1000.00</p>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-mail"></i>
                            <h4>Mail / Call Handling</h4>
                            <p>Fowarding of your business-line calls and directing of mail to 26 on Grant.</p>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-user"></i>
                            <h4>Additional services</h4>
                            <p>Add social media handling and boardroom / think tank hire</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="bg_color_1">
            <div class="container margin_80_55">
                <div class="main_title_3">
                    <span><em></em></span>
                    <h2>Book virtual offices</h2>
                    <p>Just few details needed.</p>
                </div>

                <div class="row justify-content-between">
                    <div class="col-lg-6 wow" data-wow-offset="150">
                        <figure class="block-reveal">
                            <div class="block-horizzontal"></div>
                            <img src="img/about_1.jpg" class="img-fluid" alt="">
                        </figure>
                    </div>

                    <aside class="col-lg-4" id="sidebar">
                        <div class="box_detail booking">
                            <div class="price">
                                <span>Total:</span>
                                <div class="score"><span>R </span><span id="total">1000.00</span></div>
                            </div>
                            <div class="form-group">
                                <asp:HiddenField ID="txtStartDate" runat="server" />
                                <input id="start" onchange="capture()" class="form-control required" type="text" name="dates" placeholder="Start Date">
                                <i class="icon_calendar"></i>
                            </div>
                            <div style="padding-bottom: 20px" class="form-group clearfix">
                                <div class="custom-select-form">
                                    <asp:HiddenField ID="txtRental" runat="server" />
                                    <select onchange="calcTotal()" class="wide required" id="txtMonthly" runat="server">
                                        <option>Rental Term</option>
                                        <option value="1">Monthly</option>
                                        <option value="6">6 Months</option>
                                        <option value="12">12 Months</option>
                                    </select>
                                </div>
                            </div>
                            <input id="btnAddToCart" runat="server" onserverclick="btnAddToCart_ServerClick" type="button" class="btn_1 rounded" value="Add To Cart" />
                        </div>
                    </aside>
                </div>
                <!--/row-->
            </div>
            <!--/container-->
        </div>
        <!--/bg_color_1-->

    </main>
    <script> 
        function calcTotal() {
            var total;
            if (document.getElementById('txtMonthly').value == 'Rental Term') {
                total = 0
            }
            else {
                var total = 1000 * document.getElementById('txtMonthly').value;
                document.getElementById('total').innerHTML = total + '.00';

            }
        }

    </script>
    <script> 
        function capture() {
            captureRentalTerm();
            document.getElementById('<%= txtStartDate.ClientID %>').value = document.getElementById('start').value;
        }

    </script>
    <script> 
        function captureRentalTerm() {
            document.getElementById('<%= txtRental.ClientID %>').value = document.getElementById('txtMonthly').value;
        }

    </script>
</asp:Content>
