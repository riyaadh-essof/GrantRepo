<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thinktankbooking.aspx.cs" Inherits="_26onGrant.thinktankbooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>26 on Grant | Think Tank Booking</title>

    <script src="codebase/dhtmlxscheduler.js" type="text/javascript"></script>
    <link href="codebase/dhtmlxscheduler_material.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script>
        function search() {
            $.ajax({
                type: "POST",
                url: 'thinktankbooking.aspx/calendarData2',
                contentType: "application/json",
                success: function init(response) {
                    var data = response.d;

                    scheduler.config.xml_date = "%Y-%m-%d %H:%i";
                    scheduler.config.prevent_cache = true;
                    scheduler.config.first_hour = 8;
                    scheduler.config.last_hour = 18;
                    scheduler.config.limit_time_select = true;
                    scheduler.config.hour_date = "%h:%i %A";
                    scheduler.config.details_on_create = true;
                    scheduler.config.details_on_dblclick = true;
                    scheduler.config.prevent_cache = true;

                    scheduler.attachEvent("onEventAdded", function (id, ev) {
                        alert("got data bro");
                        var event = scheduler.getEvent(id);
                        alert(ev.start_date);
                        alert(ev.text);
                        alert(ev.end_date);
                        document.getElementById('<%=txtText.ClientID %>').value = ev.text;
                        document.getElementById('<%=txtStartDate.ClientID %>').value = ev.start_date;
                        document.getElementById('<%=txtEndDate.ClientID %>').value = ev.end_date;

                    });

                    scheduler.config.lightbox.sections = [
                        { name: "description", height: 130, map_to: "text", type: "textarea", focus: true },
                        { name: "time", height: 72, type: "time", map_to: "auto" }
                    ];
                    scheduler.parse(data, "json");


                }
            });

        }

        function addNewEv() {
            scheduler.addEventNow();
        }
    </script>
</head>
    <style type="text/css">
    html, body {
        margin: 0px;
        padding: 0px;
        height: 100%;
        overflow: hidden;
    }

    #not_for_test {
        color: red;
        position: absolute;
        z-index: 9999;
        font-size: 40pt;
        top: 50px;
        left: 300px;
    }

    .add_event_button {
        position: absolute;
        width: 55px;
        height: 55px;
        background: #ff5722;
        border-radius: 50px;
        bottom: 25px;
        right: 55px;
        box-shadow: 0 2px 5px 0 rgba(0,0,0,0.3);
        z-index: 5;
        cursor: pointer;
    }

        .add_event_button:after {
            background: #000;
            border-radius: 2px;
            color: #FFF;
            content: attr(data-tooltip);
            margin: 16px 0 0 -137px;
            opacity: 0;
            padding: 4px 9px;
            position: absolute;
            visibility: visible;
            font-family: "Roboto";
            font-size: 14px;
            visibility: hidden;
            transition: all .5s ease-in-out;
        }

        .add_event_button:hover {
            background: #ff774c;
        }

            .add_event_button:hover:after {
                opacity: 0.55;
                visibility: visible;
            }

        .add_event_button span:before {
            content: "";
            background: #fff;
            height: 16px;
            width: 2px;
            position: absolute;
            left: 26px;
            top: 20px;
        }

        .add_event_button span:after {
            content: "";
            height: 2px;
            width: 16px;
            background: #fff;
            position: absolute;
            left: 19px;
            top: 27px;
        }

        .dhx_cal_event div.dhx_event_resize.dhx_footer {
            background-color: transparent !important;
        }
</style>
<body onload="search()">
    
    <div id="scheduler_here" class="dhx_cal_container" style='width: 100%; height: 100%;'>
        <div class="dhx_cal_navline">
            <div class="dhx_cal_prev_button">&nbsp;</div>
            <div class="dhx_cal_next_button">&nbsp;</div>
            <div class="dhx_cal_today_button"></div>
            <div class="dhx_cal_date"></div>
            <div class="dhx_cal_tab" name="day_tab" style="right: 204px;"></div>
            <div class="dhx_cal_tab" name="week_tab" style="right: 140px;"></div>
            <div class="dhx_cal_tab" name="month_tab" style="right: 76px;"></div>
        </div>
        <div class="dhx_cal_header">
        </div>
        <div class="dhx_cal_data">
        </div>
        <div class="add_event_button" onclick="addNewEv()" data-tooltip="Create new event"><span></span></div>
    </div>
    <form id="form1" runat="server">
         <asp:HiddenField ID="txtText" runat="server" />
        <asp:HiddenField ID="txtStartDate" runat="server" />
        <asp:HiddenField ID="txtEndDate" runat="server" />
    </form>
    <script>
        scheduler.init('scheduler_here', new Date(2019, 0, 20), "week");
    </script>
</body>
</html>
