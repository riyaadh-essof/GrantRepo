jQuery(document).ready(function () {
    $("#newsletter_form").submit(function () {
        var t = $(this).attr("action");
        return $("#message-newsletter").slideUp(750, function () {
            $("#message-newsletter").hide(), $("#submit-newsletter").after('<i class="icon-spin4 animate-spin loader"></i>').attr("disabled", "disabled"), $.post(t, {
                email_newsletter: $("#email_newsletter").val()
            }, function (t) {
                document.getElementById("message-newsletter").innerHTML = t, $("#message-newsletter").slideDown("slow"), $("#newsletter_form .loader").fadeOut("slow", function () {
                    $(this).remove()
                }), $("#submit-newsletter").removeAttr("disabled"), null != t.match("success") && $("#newsletter_form").slideUp("slow")
            })
        }), !1
    })
}), jQuery(document).on("ready", function () {
    $("#contactform").button(function () {
        var t = $(this).attr("action");
        return $("#message-contact").slideUp(750, function () {
            $("#message-contact").hide(), $("#submit-contact").after('<i class="icon-spin4 animate-spin loader"></i>').attr("disabled", "disabled"), $.post(t, {
                name_contact: $("#name_contact").val(),
                lastname_contact: $("#lastname_contact").val(),
                txtEmail: $("#email_contact").val(),
                phone_contact: $("#phone_contact").val(),
                message_contact: $("#message_contact").val(),
                verify_contact: $("#verify_contact").val()
            }, function (t) {
                document.getElementById("message-contact").innerHTML = t, $("#message-contact").slideDown("slow"), $("#contactform .loader").fadeOut("slow", function () {
                    $(this).remove()
                }), $("#submit-contact").removeAttr("disabled"), null != t.match("success") && $("#contactform").slideUp("slow")
            })
        }), !1
    })
});