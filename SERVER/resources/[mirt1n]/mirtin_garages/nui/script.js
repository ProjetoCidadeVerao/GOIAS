let modal = false;

$(document).ready(() => {
    window['addEventListener']('message', ({ data }) => {
        if (data.action == 'show') {
            $('.flex_column').html(data.location)

            if (!data.public) {
                $('.rastrear').hide();
            } else {
                $('.rastrear').show();
            }


            showNui(true)

        }
        if (data.action == 'hide') showNui(false)
    })
})

const showNui = (action) => {

    if (action) {
        $('body').fadeIn();
        requestVehicles()
    }
    if (!action) $('body').hide();
}

const requestVehicles = () => {
    $.post(`http://${window.GetParentResourceName()}/requestGarages`, JSON.stringify({}), (data) => {
        $('.list_vehicles').html('')
        
        
        data.vehList.map((item, index) => {
            $('.list_vehicles').append(`
                <div class="item vehicle_${item.vehicle}" onclick="selectVehicle('${item.vehicle}')" data-aceleration="${item.aceleration}" data-agility="${item.agility}" data-body="${item.body}" data-braking="${item.braking}" data-engine="${item.engine}" data-fuel="${item.fuel}" data-ipva="${item.ipva}" data-maxspeed="${item.maxspeed}" data-name="${item.name}" data-vehicle="${item.vehicle}">
                    <div class="top">
                        <p>${item.name.toUpperCase()}</p>
                        <img class="itemImg" src="http://177.54.148.31:4020/lotus/carros/${item.vehicle}.png" alt=""> 
                    </div>
                    <div class="bottom">
                        <div class="subItem">
                            <p>GASOLINA</p>
                            <b>${item.fuel}%</b>
                        </div>
                        <div class="subItem">
                            <p>MOTOR</p>
                            <b>${item.engine}%</b>
                        </div>
                    </div>
                </div>
            `)
        })

        for (let i = 0; i < 20 - data.vehList.length; i++) {
            $('.list_vehicles').append(`
                <div class="item_vehicles">
                </div>
            `)
        }

        if(data.vehList.length > 0){
            selectVehicle(data.vehList[0].vehicle)
        }

    })
}

const selectVehicle = (name) => {
    $('.select').removeClass('select')
    $('.vehicle_' + name).addClass('select')

    $.post(`http://${window.GetParentResourceName()}/selectVehicle`, JSON.stringify({ name }), (data) => {
        if (data.status == true) $('.no_vehicle').hide();
        if (data.status == false) $('.no_vehicle').css('display', 'flex')
        if (data.status == undefined) $('.no_vehicle').hide();
    });
}

$('body').on('keydown', (e) => {
    if (e.key == 'Escape') {
        if(modal == false) $.post(`http://${window.GetParentResourceName()}/close`, JSON.stringify({ close: true }))
        else {
            modal = false;
            $('.modal').css('display', 'none');
        }
    }
});

const withdraw = () => {
    $.post(`http://${window.GetParentResourceName()}/withdrawVehicle`, JSON.stringify({ spawn: $('.select').data('vehicle') }))
}
const store = () => $.post(`http://${window.GetParentResourceName()}/storeVehicle`, JSON.stringify({ spawn: $('.select').data('vehicle') }))

const paymentIPVA = () => {
    $.post(`http://${window.GetParentResourceName()}/paymentIPVA`, JSON.stringify({spawn: $('.select').data('vehicle')}), (data) => {
        withdraw();
    })
}

const rastrear = () => $.post(`http://${window.GetParentResourceName()}/findVehicle`, JSON.stringify({ spawn: $('.select').data('vehicle') }))




const exitModal = () => {
    modal = false;
	$('.modal').css('display', 'none');
}

const ipva = () => {

    if($('.select').data('ipva')){
        modal = true;
        $('.modal').css('display', 'flex');

        $('.modal').html(`
            <div class="contentModal">
                <div class="title">
                    VALOR IPVA
                </div>
                <b>${$('.select').data('ipva').toLocaleString('pt-br')}</b>

                <div class="flex">
                    <button onclick="exitModal()">SAIR</button>
                    <button onclick="paymentIPVA()">PAGAR</button>
                </div>
            </div>
        `)

    }else{
        withdraw();
    }

}