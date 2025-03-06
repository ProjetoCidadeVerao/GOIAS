var count = 0;
$(document).ready(function () {
    window['addEventListener']('message', ({ data }) => {
        if (data.action == 'scoreboard') {
            $('.infos').show();
            setScoreboard(data['body'])
        }

        if (data.action == 'hideScoreboard') $('.infos').hide();
        if (data.action == 'hideKillFeed') $('.chat_kill').hide();

        if (data.action == 'config') {
            if (data.body.ScoreboardPosition.top != null || data.body.ScoreboardPosition.top != undefined) $('.infos').css('top', data.body.ScoreboardPosition.top + '%')
            if (data.body.ScoreboardPosition.bottom != null || data.body.ScoreboardPosition.bottom != undefined) $('.infos').css('bottom', data.body.ScoreboardPosition.bottom + '%')
            if (data.body.ScoreboardPosition.left != null || data.body.ScoreboardPosition.left != undefined) $('.infos').css('left', data.body.ScoreboardPosition.left + '%')
            if (data.body.ScoreboardPosition.right != null || data.body.ScoreboardPosition.right != undefined) $('.infos').css('right', data.body.ScoreboardPosition.right + '%')

            if (data.body.KillFeedPosition.top != null || data.body.KillFeedPosition.top != undefined) $('.chat_kill').css('top', data.body.KillFeedPosition.top + '%')
            if (data.body.KillFeedPosition.bottom != null || data.body.KillFeedPosition.bottom != undefined) $('.chat_kill').css('bottom', data.body.KillFeedPosition.bottom + '%')
            if (data.body.KillFeedPosition.left != null || data.body.KillFeedPosition.left != undefined) $('.chat_kill').css('left', data.body.KillFeedPosition.left + '%')
            if (data.body.KillFeedPosition.right != null || data.body.KillFeedPosition.right != undefined) $('.chat_kill').css('right', data.body.KillFeedPosition.right + '%')
        }

        if (data.action == 'ranking') {
            setRanking(data['body'])
        }

        if (data.action == 'killfeed') {
            $('.chat_kill').show();
            setKill(data['body'])
            if (count <= 2) {
                count++;
            }
            else {
                count = 0
                $('.item_infos' + count).hide();
            }
        }
    })

})

window['addEventListener']('keypress', (e) => {
    if (e.key == 'Escape') {
        $.post('https://' + window.GetParentResourceName() + '/hideRanking', JSON.stringify({}))
        hideRanking();
    }
});

const setScoreboard = (data) => {
    $('.infos').html(`    
        <div class="item_infos item_infos${count}">
            <div class="icon">
                <img src="images/dominacao.svg" alt="">
            </div>
            <div class="text_infos">
                <b>DOMINAÇÂO</b>
                <p>${data['zone']}</p>
            </div>
        </div>
        <div class="item_infos">
            <div class="icon">
                <img src="images/pontuacao.svg" alt="">
            </div>
            <div class="text_infos">
                <b>PONTUAÇÃO</b>
                <p>${data['scoreboard']['score']}/${data['maxPoints']}</p>
            </div>
        </div>
        <div class="item_infos">
            <div class="icon">
                <img src="images/organizacao.svg" alt="">
            </div>
            <div class="text_infos">
                <b>ORGANIZAÇÃO</b>
                <p>${data['scoreboard']['org']}</p>
            </div>
        </div>
        <div class="item_infos">
            <div class="icon">
                <img src="images/gamer.svg" alt="">
            </div>
            <div class="text_infos">
                <b>ALIADOS</b>
                <p>${data['scoreboard']['amountPlys']}</p>
            </div>
        </div>
    `)
}

const setKill = (data) => {
    let html = `
        <div class="item_kill">
            <div class="killer" style="display: ${data.killer == 0 ? 'none' : 'flex'};">
                <div class="icon">
                    <img src="images/killer.svg" alt="">
                </div>
                <div class="name_item">
                    ${data.killer}
                </div>
            </div>
            <div class="weapon">
                <img src="images/${data.weapon ? data.weapon : 'nenhuma'}.png" alt="">
            </div>
            <div class="victim">
                <div class="name_item">
                    ${data.victim}
                </div>
                <div class="icon">
                    <img src="images/victim.svg" alt="">
                </div>
            </div>
        </div>
    `
    $(html).fadeIn(500).appendTo(`.chat_kill`).delay(10000).fadeOut(500);
}


function close() {
    $.post('https://' + window.GetParentResourceName() + '/hideRanking', JSON.stringify({}));
    hideRanking();
}

const hideRanking = () => {
    $('.ranking').fadeOut(500);
};

const setRanking = (data) => {
    let filteredData = data.sort((a, b) => b.victories - a.victories);
    $('.ranking').fadeIn(500);

    let html = `
        <div class="close">+</div>
        <h1>RANKING</h1>
        <table>
            <thead>
                <tr>
                    <th>POS</th>
                    <th>ORGANIZACAO</th>
                    <th>VITORIAS</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    `;

    $('.ranking').html(html);

    // Adiciona o evento `click` manualmente
    $('.close').on('click', close);

    let minSlots = 10;
    let slots = minSlots - filteredData.length;

    if (slots < 10) {
        for (let i = 0; i < slots; i++) {
            filteredData.push({
                org: 'NENHUM',
                victories: '0'
            });
        }
    }

    filteredData.map((item, index) => {
        $('.ranking tbody').append(`
            <tr>
                <td>${index + 1}</td>
                <td>${item.org}</td>
                <td>${item.victories}</td>
            </tr>
        `);
    });
};
