
var categoryType = null;
var page = 0;
var vehiclesList = []
var bestSellers = []
var myVehiclesList = []
var pageVehiclesList = [];
var carSelected = '';

window['addEventListener']('message', ({ data }) => {
	if (data.action == 'dealership') {
		open()
	}

	if (data.action == 'hideMenu') {
		close();
	}
})

window['addEventListener']('keyup', ({ key }) => {
	if (key === 'Escape') {
		close()
		fetch('http://mirtin_dealership/close', {
			method: 'POST',
			body: JSON.stringify({})
		})

	}
})


function open() {
	$('body').css('display', 'flex');
	$('body').fadeIn();
	fetch('http://mirtin_dealership/requestConceVehicles', { method: 'POST' })
		.then(response => response.json())
		.then(data => {
			vehiclesList.push(...data.list)
			setFirstVehicle(vehiclesList)
			pageVehiclesList = vehiclesList
			carSelected = vehiclesList[0].spawn
			updateList(vehiclesList)
		})

	// fetch('https://mirtin_dealership/requestMyVehicles', { method: 'POST' })
	// 	.then(response => response.json())
	// 	.then(data => {
	// 		myVehiclesList.push(...data.list)
	// 		updateList(myVehiclesList, true)
	// 	})
}

function back() {
	document.querySelector('#vehiclesInfos').style.display = 'none';
	document.querySelector('#vehiclesTypes').style.display = 'block';
}

function setType(type) {
	categoryType = type
	if (type === 'myVehicles') {
		if (myVehiclesList.length === 0) return;
		pageVehiclesList = myVehiclesList
		updateList(myVehiclesList, true, type);
	} else {
		const vehiclesFiltered = vehiclesList.filter(vehicle => vehicle.type === type);
		if (vehiclesFiltered.length === 0) return;
		pageVehiclesList = vehiclesFiltered
		updateList(vehiclesFiltered, false);
	}
	document.querySelector('#home').style.display = 'none';
	document.querySelector('header').style.display = 'none';
	document.querySelector('#category').style.display = 'block';
}

function updateList(vehicles, isMy) {
	if (!isMy) {

		document.querySelector('.listVehicle').innerHTML = "";

		vehicles.forEach(vehicle => {
			const div = document.createElement('div');
			div.classList.add('vehicle');
			div.innerHTML = `
          	<div class="item ${vehicle.spawn}">
          	    <div class="itemTop">
          	        <p>${vehicle.name}</p>
          	        <img class="itemImg" src="http://177.54.148.31:4020/huntersrj/carros/${vehicle.spawn}.png" alt="">
          	    </div>
          	    <div class="itemBottom">
          	    ${vehicle.name}
          	    </div>
          	</div>
        `
			document.querySelector('.listVehicle').appendChild(div);
			div.addEventListener('click', () => {
				vehicleSelected(vehicle, vehicles, isMy);
			})
			$('.' + carSelected).addClass('active');
		})
		page = 1
	}
}


function setFirstVehicle(vehicle, isMy = false) {

	console.log(JSON.stringify(vehicle, null, 4))
	document.querySelector('.showVehicle').innerHTML =
		`<div class="left">
		<div class="nameBorder">
		${vehicle[0]?.name}
		</div>
		<img class="imageShow" src="http://177.54.148.31:4020/huntersrj/carros/${vehicle[0].spawn}.png" alt="">
		<div class="nameShow">${vehicle[0]?.name}</div>
	</div>
	<div class="right">
		<div class="itemShow">
			<p>VELOCIDADE MAX</p>
			<div class="progress"><span style="width: ${vehicle[0]?.maxspeed / 10}%;"></span></div>
		</div>
		<div class="itemShow">
			<p>ACELERAÇÃO</p>
			<div class="progress"><span style="width: ${vehicle[0]?.aceleration * 100}%;"></span></div>
		</div>
		<div class="itemShow">
			<p>FRENAGEM</p>
			<div class="progress"><span style="width: ${vehicle[0]?.braking * 10}%;"></span></div>
		</div>
		<div class="itemShow">
			<p>AGILIDADE</p>
			<div class="progress"><span style="width: ${vehicle[0]?.agility * 100}%;"></span></div>
		</div>
		<div class="price">
			R$ ${vehicle[0]?.price.toLocaleString('pt-br')}
			<span>Estoque: ${vehicle[0].stock}</span>
		</div>
	</div>`
}

function vehicleSelected(vehicle, vehicles, isMy = false) {
	page = 2;
	carSelected = vehicle?.spawn
	console.log(JSON.stringify(vehicle))
	$('.item').removeClass('active');
	$('.' + vehicle.spawn).addClass('active');


	document.querySelector('.showVehicle').innerHTML = `
		<div class="left">
			<div class="nameBorder">
			${vehicle?.name}
			</div>
			<img class="imageShow" src="http://177.54.148.31:4020/huntersrj/carros/${vehicle.spawn}.png" alt="">
			<div class="nameShow">${vehicle?.name}</div>
		</div>
		<div class="right">
			<div class="itemShow">
				<p>VELOCIDADE MAX</p>
				<div class="progress"><span style="width: ${vehicle?.maxspeed / 10}%;"></span></div>
			</div>
			<div class="itemShow">
				<p>ACELERAÇÃO</p>
				<div class="progress"><span style="width: ${vehicle?.aceleration * 100}%;"></span></div>
			</div>
			<div class="itemShow">
				<p>FRENAGEM</p>
				<div class="progress"><span style="width: ${vehicle?.braking * 10}%;"></span></div>
			</div>
			<div class="itemShow">
				<p>AGILIDADE</p>
				<div class="progress"><span style="width: ${vehicle?.agility * 100}%;"></span></div>
			</div>
			<div class="price">
				R$ ${vehicle?.price.toLocaleString('pt-br')}
				<span>Estoque: ${vehicle?.stock}</span>	
			</div>
		</div>
	`
}

function close() {
	myVehiclesList = []
	vehiclesList = []
	promotional = {}
	$('body').fadeOut(500);
	$('.modal').css('display', 'none');
}

function exitModal() {
	$('.modal').css('display', 'none');
}

function payment() {
	$('.modal').css('display', 'flex');
}

function buyVehicle() {
	if (carSelected.vip) {
		window.invokeNative('openUrl', 'https://site.hydrus.gg/')
	} else {
		fetch('http://mirtin_dealership/buyVehicle', {
			method: 'POST',
			body: JSON.stringify({ vehicle: carSelected })
		})
	}
}

function testDrive() {
	fetch('http://mirtin_dealership/testDrive', {
		method: 'POST',
		body: JSON.stringify({ vehicle: carSelected })
	})
}

function searchVehicle({ target }) {
	const value = target.value.toLowerCase();

	if (value.length === 0) {
		console.log(pageVehiclesList)
		updateList(pageVehiclesList);
	} else {
		updateList(pageVehiclesList.filter(vehicle => String(vehicle.name).toLocaleLowerCase().includes(value)));
	}
}

function sell(spawn, isVip = false) {
	if (isVip) return;
	fetch('http://mirtin_dealership/sellVehicle', {
		method: 'POST',
		body: JSON.stringify({ vehicle: spawn })
	})
}

function transfer(spawn, isVip = false) {
	if (isVip) return;
	fetch('http://mirtin_dealership/transferVehicle', {
		method: 'POST',
		body: JSON.stringify({ vehicle: spawn })
	})
}


function setType(type) {
	const value = type.toLowerCase();

	$('.buttonType').removeClass('activeType');
	$('.' + type).addClass('activeType');

	if (value === 'carros' || value === 'motos') {
		updateList(pageVehiclesList.filter(vehicle => String(vehicle.type).toLocaleLowerCase() === value));
	} else if(value == 'all'){
		updateList(pageVehiclesList);
	} else {
		updateList(pageVehiclesList.filter(vehicle => String(vehicle.type).toLocaleLowerCase() !== 'carros' && String(vehicle.type).toLocaleLowerCase() !== 'motos'));
	}
}