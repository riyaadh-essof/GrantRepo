<%@ Page Title="" ClientIDMode="Static" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="officebooking.aspx.cs" Inherits="_26onGrant.officebooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/tables.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="hero_in tours">
        <div class="wrapper">
            <div class="container">
                <h1 class="fadeInUp"><span></span>Office Booking</h1>
            </div>
        </div>
    </section>
    <!--/hero_in-->
    <div class="container margin_60_35">
        <div class="main_title_3">
            <span><em></em></span>
            <h2>Search available offices</h2>
        </div>
        <div class="row no-gutters custom-search-input-2">
            <div class="col-lg-10">
                <select class="wide" id="dropOffice" runat="server">
                    <option>Type Of Office</option>
                    <option>Office</option>
                    <option>Private Office</option>
                    <option>Co-Working Space</option>
                </select>
            </div>
            <div class="col-lg-2">
                <input id="btnSearchOffice" runat="server" onserverclick="btnSearchOffice_ServerClick1" type="button" class="btn_search" value="Search">
            </div>
        </div>
        <div class="row no-gutters custom-search-input-2">
            <div class="col-lg-4">
                <div class="form-group">
                    <asp:HiddenField ID="txtStartDate" runat="server" />
                    <input id="start" onchange="capture()" class="form-control" type="text" name="dates" placeholder="When..">
                    <i class="icon_calendar"></i>
                </div>
            </div>
            <div class="col-lg-4">
                <select class="wide" id="dropPeople" runat="server">
                    <option>Number of people</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>

                </select>
            </div>
            <div class="col-lg-4">
                <select class="wide" id="txtMonthly" runat="server">
                    <option>Rental term</option>
                    <option value="1">Monthly</option>
                    <option value="6">6 Months</option>
                    <option value="12">12 Months</option>
                </select>
            </div>
        </div>

    </div>
    
    <div class="container margin_60_35" runat="server" id="allOfficeDiv">
    
    </div>
    <!-- /row -->
    <div class="container margin_60_35" runat="server" id="officeDiv">

        <!-- /container -->

    </div>

    <script> 
        function capture() {
            document.getElementById('<%= txtStartDate.ClientID %>').value = document.getElementById('start').value;
        }
    </script>
</asp:Content>

