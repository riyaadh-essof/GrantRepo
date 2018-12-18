<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="_26onGrant.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>26 on Grant | Home</title>
    <link href="css/video.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <!-- Slider -->
        <div id="full-slider-wrapper">
            <div id="layerslider" style="width: 100%; height: 750px;">
                <!-- first slide -->
                <div class="ls-slide" data-ls="slidedelay: 5000; transition2d:85;">
                    <img src="img/home_slider/slide_1.jpg" class="ls-bg" alt="Slide background">
                    <h3 class="ls-l slide_typo" style="top: 47%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">Book <strong>Unique</strong> Offic Experiences</h3>
                    <p class="ls-l slide_typo_2" style="top: 55%; left: 50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">
                        Offices | Virtual Office | Boardroom | Thinktank
                    </p>
                    <a class="ls-l btn_1 rounded" style="top: 65%; left: 50%; white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='hotels-grid-isotope.html'>Read more</a>
                </div>
                <!-- second slide -->
                <div class="ls-slide" data-ls="slidedelay:5000; transition2d:103;">
                    <img src="img/home_slider/slide_2.jpg" class="ls-bg" alt="Slide background">
                    <h3 class="ls-l slide_typo" style="top: 47%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;"><strong>Enjoy</strong> Unforgatable Holidays</h3>
                    <p class="ls-l slide_typo_2" style="top: 55%; left: 50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">
                        Offices | Virtual Office | Boardroom | Thinktank
                    </p>
                    <a class="ls-l btn_1 rounded" style="top: 65%; left: 50%; white-space: nowrap;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='tours-grid-isotope.html'>Read more</a>
                </div>
                <!-- third slide -->
                <div class="ls-slide" data-ls="slidedelay: 5000; transition2d:5;">
                    <img src="img/home_slider/slide_3.jpg" class="ls-bg" alt="Slide background">
                    <h3 class="ls-l slide_typo" style="top: 47%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;"><strong>Top Attractions</strong> to discover</h3>
                    <p class="ls-l slide_typo_2" style="top: 55%; left: 50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">
                        Offices | Virtual Office | Boardroom | Thinktank
                    </p>
                    <a class="ls-l btn_1 rounded" style="top: 65%; left: 50%;" data-ls="durationin:2000;delayin:1400;easingin:easeOutElastic;" href='tours-grid-sidebar.html'>Read more</a>
                </div>
            </div>
        </div>
        <!-- End layerslider -->

        <div class="container margin_80_55">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>Our Services</h2>
				<p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<a class="box_feat" href="#0">
						<i class="pe-7s-medal"></i>
						<h3>Book Office</h3>
						<p>Id mea congue dictas, nec et summo mazim impedit. Vim te audiam impetus interpretaris, cum no alii option, cu sit mazim libris.</p>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a class="box_feat" href="#0">
						<i class="pe-7s-help2"></i>
						<h3>Virtual Offices</h3>
						<p>Id mea congue dictas, nec et summo mazim impedit. Vim te audiam impetus interpretaris, cum no alii option, cu sit mazim libris. </p>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a class="box_feat" href="#0">
						<i class="pe-7s-culture"></i>
						<h3>Boardroom Rental</h3>
						<p>Id mea congue dictas, nec et summo mazim impedit. Vim te audiam impetus interpretaris, cum no alii option, cu sit mazim libris.</p>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a class="box_feat" href="#0">
						<i class="pe-7s-headphones"></i>
						<h3>Think Tank Rental</h3>
						<p>Id mea congue dictas, nec et summo mazim impedit. Vim te audiam impetus interpretaris, cum no alii option, cu sit mazim libris. </p>
					</a>
				</div>
			</div>
			<!--/row-->
		</div>
		<!-- /container -->

        <div class="grid" style="padding-top: 5px">
            <ul>
                <li>
                    <figure>
                        <img src="img/gallery/large/pic_4.jpg" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <a href="officebooking.aspx">
                                    <i class="pe-7s-monitor"></i>
                                    <p>Book Office</p>
                                </a>
                            </div>
                        </figcaption>
                    </figure>
                </li>

                <li>
                    <figure>
                        <img src="img/gallery/large/pic_5.jpg" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <a href="virualoffice.aspx">
                                    <i class="pe-7s-global"></i>
                                    <p>Book Virtual Office</p>
                                </a>
                            </div>
                        </figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="img/gallery/large/pic_3.jpg" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <a href="boardroomrental.aspx">
                                    <i class="pe-7s-date"></i>
                                    <p>Book Boardroom</p>
                                </a>
                            </div>
                        </figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="img/gallery/large/pic_3.jpg" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <a href="thinktankrental.aspx">
                                    <i class="pe-7s-science"></i>
                                    <p>Book Virtual Office</p>
                                </a>
                            </div>
                        </figcaption>
                    </figure>
                </li>
            </ul>
        </div>
        <!-- /grid -->
        <!-- /container -->

        

        
        <div class="video-wrapper">
            <video loop autoplay muted poster="img/poster.html" class="bgvid" id="bgvid">
                <source type="video/mp4" src="video/video.mp4" />
                <source type="video/ogv" src="video/video.ogv" />
                <source type="video/webm" src="video/video.webm" />
            </video>
        </div>
    </main>
</asp:Content>
