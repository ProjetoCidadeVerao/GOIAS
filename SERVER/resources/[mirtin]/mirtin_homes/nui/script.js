let garagemID = null;
let carID = null;
let motorID = null;
let latariaID = null;
let gasolinaID = null;
let roupaID = null;
let moradorID = null;
let house_id = null;
let house_query_id = null;
let usou = false;

$(document).keyup(function(e) {
    if (e.key === "Escape") {
        $.post('http://mirtin_homes/fechar', JSON.stringify({}));

        $(".containerClothe").html('');
        $(".containerMoradores").html('');
        $(".container-garagem").html('');
    }
});

$(document).ready(function() {
    window.addEventListener('message', function(event) {
        let data = event.data;

        if (!data.show){
            $('body').css('background-color', 'transparent')
            $(".container-garagem").html('');
            $("#garagem").hide();

            $("#armario").hide();
            $(".containerClothe").html('');

            $("#moradores").hide();
            $(".containerMoradores").html('');



            garagemID = null;
            carID = null;
            roupaID = null;
            house_query_id = null;
            house_id = null;

            setTimeout(function(){ usou = false }, 5000);
            return
        }

        if (data.show) {
            if (data.tipo == "garagem") {
                $('#nameGaragem').html("Propriedade #" + data.idGaragem);
                $("#garagem").show();
                $('body').css('background-color', 'rgba(139, 102, 241, 0.15)')

                let garagem_data = data.js
                for (let item in garagem_data) {
                    let debitos
                    if (garagem_data[item].ipva && garagem_data[item].detido && garagem_data[item].retido) {
                        debitos = "<b style ='color: green'>Em Dia</b>"
                    }else{
                        debitos = "<b style ='color: red'>Vencidos</b>"
                    }
    
                    $(".container-garagem").append(`
                    <div onclick="selectVehicle(this)" class="item carro-item" data-id="` + data.idGaragem + `" data-veiculo="` + garagem_data[item].veiculo + `" data-plate="` + garagem_data[item].placa + `" data-motor="` + garagem_data[item].motor + `" data-lataria="` + garagem_data[item].lataria + `" data-gasolina="` + garagem_data[item].gasolina + `">
                    <div class="imagem" style="background-image: url(`+ data.imagens + garagem_data[item].veiculo +`.png)"></div>
                    <span id="nome" style="color:#fff !important">` + garagem_data[item].name + `<br>
                    <span id="types" style="color:#fff !important">Motor: ` + garagem_data[item].motor + `% | Lataria: ` + garagem_data[item].lataria + `% | Gasolina: ` + garagem_data[item].gasolina + `%</span><br>
                    <span id="types2" style="color:#fff !important">Debitos: ` + debitos + ` </span></span>
                    </div>`);
                }

                $("#garagem").on('click', '#spawn', function() {
                    if (!garagemID || !carID || usou) return
                    usou = true

                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/spawnCar', JSON.stringify({
                        id: garagemID,
                        vehicle: carID,
                        plate: plateID,
                        motor: motorID,
                        lataria: latariaID,
                        gasolina: gasolinaID
                    }));
                });
            
                $("#garagem").on('click', '#return', function() {
                    if (usou) return
                    usou = true
                    
                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/storeCar', JSON.stringify({}));
                    
                });
            }

            if (data.tipo == "armario") {
                $("#armario").fadeIn();
                $('body').css('background-color', 'rgba(139, 102, 241, 0.15)')
                house_query_id = data.id
                house_id = data.houseID


                $('#nameArmario').html("Armario #" + house_id);

                let armario_data = data.js
                for (let item in armario_data) {
                    $(".containerClothe").append(`
                    <div onclick="selectRoupa(this)" class="clotheItem" data-id="` + item +`">
                        <i class="fas fa-tshirt"></i>
                        <span>${item}</span>
                    </div>
                    `);
                }

                $("#armario").on('click', '#use', function() {
                    if (!roupaID || usou) return
                    usou = true

                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/usarRoupa', JSON.stringify({
                        id: house_query_id,
                        idRoupa: roupaID
                    }));
                });

                $("#armario").on('click', '#save', function() {
                    if (usou) return
                    usou = true

                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/salvarRoupa', JSON.stringify({
                        id: house_query_id
                    }));
                });

                $("#armario").on('click', '#remove', function() {
                    if (!roupaID || usou) return
                    usou = true

                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/deletarRoupa', JSON.stringify({
                        id: house_query_id,
                        idRoupa: roupaID
                    }));
                });
            }

            if (data.tipo == "moradores") {
                $("#moradores").fadeIn();
                $('body').css('background-color', 'rgba(139, 102, 241, 0.15)')
                house_query_id = data.id
                house_id = data.houseID
                
                $('#nameMoradores').html("Moradores #" + house_id);
                
                let moradores_data = data.js
                for (let item in moradores_data) {
                    $(".containerMoradores").append(`
                    <div onclick="selectMorador(this)" class="moradoresItem" data-id="` + item.toString() +`">
                        <i class="fas fa-user-alt"></i>
                        <span>${moradores_data[item]} #${item}</span>
                    </div>
                    `);
                }

                $("#moradores").on('click', '#addM', function() {
                    if (usou) return
                    usou = true

                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/addMorador', JSON.stringify({
                        id: house_query_id,
                        houseID: house_id
                    }));
                });

                $("#moradores").on('click', '#remM', function() {
                    if (!moradorID || usou) return
                    usou = true
                    $.post('http://mirtin_homes/fechar', JSON.stringify({}));
                    $.post('http://mirtin_homes/remMorador', JSON.stringify({
                        id: house_query_id,
                        houseID: house_id,
                        morador: moradorID
                    }));
                });

            }
        }
    })
});

function selectVehicle(element) {
    garagemID = element.dataset.id;
    carID = element.dataset.veiculo;
    plateID = element.dataset.plate; 
    motorID = element.dataset.motor;
    latariaID = element.dataset.lataria;
    gasolinaID = element.dataset.gasolina;
    
    $(".container-garagem div").css("border", "0");
    $(element).css("border", "1px solid rgba(255, 255, 255, 0.4)");
}

function selectRoupa(element) {
    roupaID = element.dataset.id;

    $(".clotheItem").css("border", "0");
    $(element).css("border", "1px solid rgba(255, 255, 255, 0.4)");
}

function selectMorador(element) {
    moradorID = element.dataset.id;

    $(".moradoresItem").css("border", "0");
    $(element).css("border", "1px solid rgba(255, 255, 255, 0.4)");
}