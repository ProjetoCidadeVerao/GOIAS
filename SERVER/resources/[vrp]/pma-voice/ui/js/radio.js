function changeVolume(event) {
    let element = event.currentTarget

    let volume_element = document.querySelector('.volumeText')

    volume_element.innerHTML = `
        <p class = 'volumeText'>VOL <strong>${element.value}%</strong></p>
    `    

    $.post('http://pma-voice/changevolume', JSON.stringify({
        volume: element.value
    }));
}

function changeFreq(event) {
    let element = event.currentTarget

    if (element.value <= -1) {
        return
    }

    $.post('http://pma-voice/activeFrequency', JSON.stringify({
        freq: element.value
    }));
}

function turn_off_radio(event) {
    let element = event.currentTarget
    let status = element.dataset.on
    let freq = document.querySelector('#freq')


    if (status == '1') {
        element.dataset.on = '0'
        element.style.opacity = '50%'

        $.post('http://pma-voice/inativeFrequency', JSON.stringify({ }));
    } else {
        element.dataset.on = '1'
        element.style.opacity = '100%'

        $.post('http://pma-voice/activeFrequency', JSON.stringify({
            freq: freq.value
        }));
    }
}

window.addEventListener('message', ({data}) => {
    let radio_container = document.querySelector('.radio-image')
    if (data.show) {
        radio_container.style.bottom = '0vh'
    } else {
        radio_container.style.bottom = '-100vh'
    }
})

document.onkeyup = function(data){
    if (data.which == 27){
        $.post('http://pma-voice/closeRadio', JSON.stringify({}));
    }
};