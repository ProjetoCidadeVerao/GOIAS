$(function(){
    init();
    $(".ngs").hide()
    window.addEventListener("message", function(event){
        if (event.data.NetGames != undefined) {
            let status = event.data.NetGames
            if (status) {
                $(".ngs").show()
            } else {
                $(".ngs").hide()
            }
        }
    })
})



function init() {
    $(".btn").each(function(i,obj){

        if ($(this).attr("data-action")){
            $(this).click(function(){
                var data = $(this).data("action"); 
                sendData("ButtonClick",data); 
            })
        }

        if ($(this).attr("data-sub")){
            var menu = $(this).data("sub");
            var element = $("#"+menu);

            $(this).click(function(){
                element.show();
                $("body").hide();
                $(this).parent().hide();
            })

            var backBtn = $('<button/>',{text:'Voltar'});

            backBtn.click(function(){
                element.hide();
                $("#"+element.data("parent")).show();
            });

            element.append(backBtn);
        }
    });
}

document.onkeyup = function(data){
    if (data.which == 27){
        if ($(".ngs").fadeIn()){
            sendData("fechar2","fechar2")
            $(".ngs").hide()
        }
    }
};

function sendData(name,data){
	$.post("http://ngs_kitinicial/"+name,JSON.stringify(data),function(datab){
		if (datab != "ok"){
		}
	});
    $(".ngs").hide()
    $.post("http://ngs_kitinicial/Close")
}