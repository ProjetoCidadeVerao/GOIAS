var sectionAction = 'deposit'
 
$(document).ready(() => {
	window['addEventListener']('message', ({ data }) => {
		if (data['openBank']) {
			$('body').fadeIn(200)
			setMoneys(data['bank'], data['multas'], data['cart'], data['log'])
		}
		if (data['openBank'] == false) $('body').fadeOut(200)
		if(data['updateBalance']){
			setMoneys(data['bank'], data['multas'], data['cart'], data['log'])
		}
		myChart.data.datasets[0].data = [data.graphic['SAQUE'],data.graphic['DEPOSITO'],data.graphic['TRANSFERENCIA'],data.graphic['MULTAS']]
		myChart.update();
	})

	document.onkeyup = function (data) {
		if (data["which"] == 27) {
			$.post("http://mirtin_bank/close", JSON.stringify({}));
		}
	}
})
 

const setMoneys = (bank, fines, hand, historico) => {
	$('.list_history').html('')
	historico.reverse().map((item, index)=>{
		$('.list_history').append(`
			<div class="item_history par">
				<div class="action_history history_${item['type'].toLowerCase()}">
					${item['type']}
				</div>
				<div class="value_history">
					R$${item['value']}
				</div>
				<div class="date_history">
					${item['timer']}
				</div>
			</div>
		`)
	})	

	$('.item_card').html(`		
		<div class="hand">
			<p>Carteira</p>
			<b>R$${hand}</b>
		</div>
		<div class="fines_balance">
			<p>Multas</p>
			<b>R$${fines}</b>
		</div>
		<div class="bank">
			<p>Banco</p>
			<b>R$${bank}</b>
		</div>
	`)
}


const setAction = (action) => {
	sectionAction = action
	switch (action) {
		case 'deposit':
			$('.id').slideUp(200);
			$('.action .title').html('Depositar')
			break;
		case 'withdraw':
			$('.id').slideUp(200);
			$('.action .title').html('Sacar')
			break;
		case 'transfer':
			$('.id').slideDown(200);
			$('.action .title').html('Transferir')
			break;
		case 'fines':
			$('.id').slideUp(200);
			$('.action .title').html('Pagar Multas')
			break;
	}
}

const submit = () => {
	if(sectionAction == 'transfer'){
		$.post('https://mirtin_bank/transferSubmit', JSON.stringify({
			amount: $('.value').val(),
			toPlayer: $('.id').val()
		}), (data)=>{})
	}else{
		$.post('https://mirtin_bank/' + sectionAction + 'Submit', JSON.stringify({
			amount: $('.value').val()
		}), (data)=>{})
	}
}