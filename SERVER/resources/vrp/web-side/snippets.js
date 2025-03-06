/* TASK BAR */
$(document).ready(function () {
    var percent = 0;
    var isVisible = false

    document.onkeydown = function (data) {
        if (data.which == 69 && isVisible == true) {
            $(".mainTaskBar").css("display", "none");
            $.post("http://vrp/taskEnd", JSON.stringify({ taskResult: percent }));
        }
    }

    window.addEventListener("message", function (event) {
        var item = event.data;
        if (item.runProgress === true) {
            isVisible = true;
            percent = 0;
            $(".mainTaskBar").css("display", "block");
            $("#progress-bar").css("width", "0%");
            $(".skillprogress").css("left", item.chance + "%")
            $(".skillprogress").css("width", item.skillGap + "%");
        }

        if (item.runUpdate === true) {
            percent = item.Length
            $("#progress-bar").css("width", item.Length + "%");

            if (item.Length < (item.chance + item.skillGap) && item.Length > (item.chance)) {
                $(".skillprogress").css("background-color", "#e6e6e5b9");
            } else {
                $(".skillprogress").css("background-color", "#e6e6e575");
            }
        }

        if (item.closeProgress === true) {
            isVisible = false;
            $(".mainTaskBar").css("display", "none");
        }
    });
});