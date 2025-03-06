var app = new Vue({
    el: '#app',
    template: `
    
    <div v-if="menu" class="container">

        <!-- <div class="rotatePlayer">

            <h1>A</h1>

            <img src="./assets/rotatePlayerIcon.svg" alt="">

            <h1>D</h1>

        </div> -->

        <div id="menu">

            <div class="menuTitle">

                <h1>Manicure</h1>

            </div>

            <div class="handsPreview">

                <div class="handContainer">

                    <h1>Mão esquerda</h1>

                    <img src="./assets/leftHand.svg" alt="">

                    <div
                    :class="{selectedFinger: hands['left'].selectedFinger == v - 1 && hands.selectedHand == 'left', modifiedFinger: hands['left'].fingerColors[v-1].color != ''}"
                    @click="chooseFinger(v-1, 'left')"
                    v-for="v in 5"
                    :style="{'background-color' : hands['left'].fingerColors[v-1].color}"
                    class="fingerSelector"></div>

                    <div
                    @click="chooseFinger(5, 'left')"
                    :class="{selectedFinger: allHandsInfos.active}" 
                    :style="{'background-color' : allHandsInfos.active ? allHandsInfos.color : ''}"
                    class="allFingersSelector"></div>

                    <img class="handBackgroundImage" src="./assets/handBackground.png" alt="">

                </div>
                
                <div class="handContainer">

                    <h1>Mão direita</h1>

                    <img src="./assets/rightHand.svg" alt="">

                    <div 
                    @click="chooseFinger(v-1, 'right')"
                    :class="{selectedFinger: hands['right'].selectedFinger == v - 1 && hands.selectedHand == 'right', modifiedFinger: hands['right'].fingerColors[v-1].color != ''}"
                    :style="{'background-color' : hands['right'].fingerColors[v-1].color}"
                    v-for="v in 5"
                    class="fingerSelector"></div>

                    <div
                    @click="chooseFinger(5, 'right')"
                    :class="{selectedFinger: allHandsInfos.active}"
                    :style="{'background-color' : allHandsInfos.active ? allHandsInfos.color : ''}"
                    class="allFingersSelector"></div>

                    <img class="handBackgroundImage" src="./assets/handBackground2.png" alt="">

                </div>

            </div>

            <div class="colorOptionsContainer">

                <div class="colorOptions">

                    <div class="colorOptionsTitle">
                        <h1>Cor Da Mão Esquerda</h1>
                    </div>

                    <div class="colorsContainer">

                        <div
                        @click="chooseColor(v, 'left')"
                        :class="{selectedColor: hands['left'].fingerColors[hands['left'].selectedFinger].color == v}"
                        :style="{'background' : v}"
                        v-for="v in colorOptions" class="color">
                            
                        

                        </div>

                    </div>

                </div>

                <div class="colorOptions">

                    <div class="colorOptionsTitle">
                        <h1>Cor Da Mão Direira</h1>
                    </div>

                    <div class="colorsContainer">

                        <div 
                        @click="chooseColor(v, 'right')"
                        :class="{selectedColor: hands['right'].fingerColors[hands['right'].selectedFinger].color == v}"
                        :style="{'background' : v}" 
                        v-for="v in colorOptions" class="color">


                        </div>

                    </div>

                </div>

            </div>

            <div class="nailTypes">

                <h1>Tipo de unha</h1>
                <div class="nailTypesList">

                    <div :class="{selectedType: v.type == hands[hands.selectedHand].fingerColors[hands[hands.selectedHand].selectedFinger].type}" @click="chooseNailType(v)" v-for="v in nailTypes" class="nailType">
                        <img :src="v.photo" alt="">
                    </div>

                </div>

            </div>

            <div class="cartPrice">

                <img src="./assets/cartIcon.svg" alt="">
                <h1>Valor: $ {{getCartPrice() > 0 ? getCartPrice().toFixed(2) : '0,00'}}</h1>

            </div>

            <div class="buttons">

                <div class="buttonsContainer">

                    <button @click="insertModal(2)">
                        <h1>Confirmar</h1>
                    </button>
                    <button @click="cancel">
                        <h1>Cancelar</h1>
                    </button>

                </div>

            </div>

        </div>

        <div v-if="modalActive > 0" class="modalContainer">

            <div v-if="modalActive == 1" class="modal">

                <img v-if="customModalInfos.type == 'success'" src="./assets/successIcon.svg" alt="">
                <img v-if="customModalInfos.type == 'error'" src="./assets/errorIcon.svg" alt="">

                <h1>{{customModalInfos.text}}</h1>

                <div @click="insertModal(0)" :class="customModalInfos.type" class="modalButton">
                    <h1>Voltar</h1>
                </div>

            </div>

            <div v-if="modalActive == 2" class="modal confirmationModal">

                <img src="./assets/confirmationIcon.svg" alt="">

                <h1>Deseja finalizar a compra <span>no valor de $ {{getCartPrice().toFixed(2)}}?</span></h1>

                <div class="confirmationModalButtons">

                    <div @click="confirmNails" class="modalButton modalButton2">
                        <h1>Confirmar</h1>
                    </div>

                    <div @click="insertModal(0)" class="modalButton modalButton2">
                        <h1>Voltar</h1>
                    </div>

                </div>

            </div>

        </div>

    </div>
    
    `,
    data: {

        screen: 0,

        modalActive: 0,

        menu: false,

        hands : {
            selectedHand : 'left',
            left : {
                selectedFinger : 0,
                fingerColors : [
                    {color : '', type : 0, bone: 'SKEL_L_Finger42'},
                    {color : '', type : 0, bone: 'SKEL_L_Finger32'},
                    {color : '', type : 0, bone: 'SKEL_L_Finger22'},
                    {color : '', type : 0,bone: 'SKEL_L_Finger12'},
                    {color : '', type : 0, bone: 'SKEL_L_Finger02'},
                    {color : '', type : 0},

                ]
            },
            
            right : {
                selectedFinger : 0,
                fingerColors : [
                    {color : '', type : 0, bone: 'SKEL_R_Finger42'},
                    {color : '', type : 0, bone: 'SKEL_R_Finger32'},
                    {color : '', type : 0, bone: 'SKEL_R_Finger22'},
                    {color : '', type : 0,bone: 'SKEL_R_Finger12'},
                    {color : '', type : 0, bone: 'SKEL_R_Finger02'},
                    {color : '', type : 0},
                ]
            },
        },

        colorOptions : [
            '#992532',
            '#6739C8',
            '#FFFFFF',
            '#75E6FF',
            '#EE28FF',
            '#FFED49',
            '#000000',
            '#A4645D',
            '#FF007A',
            '#1D7736',
            '#001AFF',
            '#61FF00',
            '#6B1200',
            '#FF3600',
            '#FF707F',
            '#CA7F92',
            '#90174A',
            '#616161',
            '#FF95C1',
            '#4CB37B',
            '#5791C7',
            '#9D9D9D',
            '#E00015',
            '#A1DE20',
        ],

        allHandsInfos : {
            active : false,
            color : '',
            type : ''
        },

        prices : {
            [0] : 10,
            [1] : 20,
            [2] : 30,
            [3] : 40,
            [4] : 50
        },

        nailTypes : [
            {
                type : 'normal',
                photo : './assets/handBackground.png'
            },
            {
                type : 'grande',
                photo : './assets/handBackground.png'
            },
            {
                type : 'pequena',
                photo : './assets/handBackground.png'
            },
            {
                type : 'unha 4',
                photo : './assets/handBackground.png'
            },
            {
                type : 'unha 5',
                photo : './assets/handBackground.png'
            },
            {
                type : 'unha 6',
                photo : './assets/handBackground.png'
            },
            {
                type : 'unha 7',
                photo : './assets/handBackground.png'
            },
            {
                type : 'unha 8',
                photo : './assets/handBackground.png'
            },
        ],

        priceList : {
            
        },

        nailPrice : 8,

        customModalInfos : {
            type : '',
            text : '',
        },

        
    },

    methods : {

        getCartPrice() {

            
          //  let counter = 0
            let price = 0

            for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                if(this.hands['left'].fingerColors[i].color != '' && !this.hands['left'].fingerColors[i].purchased) {
                  //  counter++
                    price += this.prices[this.hands['left'].fingerColors[i].type]
                }
            }
            for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                if(this.hands['right'].fingerColors[i].color != '' && !this.hands['right'].fingerColors[i].purchased) {
                    //counter++
                    price += this.prices[this.hands['left'].fingerColors[i].type]
                }
            }

            //price = counter * this.nailPrice

            return price
        },

        async confirmNails() {
            let query = await axios.post('http://trig_nails/confirmCart',{
                price: this.getCartPrice(),
                allHands: this.allHandsInfos.active
            })


            let data = query.data
            if (data) {
                this.closeUI(true)
            } else {
                this.insertCustomModal('error','Dinheiro insuficiente')
            }
        },

        cancel() {
            this.closeUI()
           
        },

        chooseNailType(element) {
            let selectedHand = this.hands.selectedHand
            let selectedFinger = this.hands[selectedHand].selectedFinger

            if(!this.allHandsInfos.active) {
                this.hands[selectedHand].fingerColors[selectedFinger].type = element.type
            } else {
                for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                    this.hands['left'].fingerColors[i].type = element.type
                }
                for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                    this.hands['right'].fingerColors[i].type = element.type
                }
            }
            
        },

        chooseFinger(fingerIndex, hand) {
            this.hands.selectedHand = hand,
            this.hands[hand].selectedFinger = fingerIndex
            if(fingerIndex == 5 && !this.allHandsInfos.active) {
                this.allHandsInfos.active = true
            } else if (this.allHandsInfos.active) {
                this.allHandsInfos.active = false
                this.selectedHand = hand
                this.hands[hand].selectedFinger = 0
                axios.post('http://trig_nails/removeAllHands')

                for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                    this.hands['left'].fingerColors[i].color = ''
                }
                for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                    this.hands['right'].fingerColors[i].color = ''
                }
            }
        },

        chooseColor(color, hand) {
            let selectedHand = this.hands.selectedHand
            if(hand != this.hands.selectedHand && !this.allHandsInfos.active) return
            let selectedFinger = this.hands[hand].selectedFinger

            let colorIndex = this.colorOptions.indexOf(color)
            let nailType = this.hands[hand].fingerColors[selectedFinger].type
            let bone = this.hands[hand].fingerColors[selectedFinger].bone
            



            if(this.hands[hand].fingerColors[selectedFinger].color != color) {
                if(!this.allHandsInfos.active) {
                    this.hands[hand].fingerColors[selectedFinger].color = color
                  
                } else {
                    for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                        this.hands['left'].fingerColors[i].color = color
                    }
                    for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                        this.hands['right'].fingerColors[i].color = color
                    }
                   
                }

                axios.post('http://trig_nails/applyNail',{
                    selectedFinger: selectedFinger,
                    nailIndex: colorIndex,
                    nailType: nailType,
                    handSide: hand,
                    bone,
                    allHands: this.allHandsInfos.active
                })

               
            } else {
                if(!this.allHandsInfos.active) {
                    this.hands[hand ].fingerColors[selectedFinger].color = ''
                  
                    
                } else {
                    for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                        this.hands['left'].fingerColors[i].color = ''
                    }
                    for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                        this.hands['right'].fingerColors[i].color = ''
                    }
                }

                axios.post('http://trig_nails/removeNail',{
                    handSide: hand,
                    selectedFinger: selectedFinger,
                    allHands : this.allHandsInfos.active
                })
                
               
            }
            if(this.allHandsInfos.active) {
                this.allHandsInfos.color = color
            }
            
        },

        insertCustomModal(type, text) {
            this.customModalInfos.type = type
            this.customModalInfos.text = text
            this.insertModal(1)
        },
        
        rotateDirection(direction) {
            axios.post('http://trig_nails/rotate',{ pos: direction})
        },

        insertModal(nextModal) {
           // if(nextModal == 2 && this.getCartPrice() == 0) return this.closeUI()
            this.modalActive = nextModal
        },

        changeScreen(nextScreen) {
            this.screen = nextScreen
        },

        closeUI(payment) {
            this.menu = false
            this.modalActive = 0


            this.allHandsInfos.active = false
            for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                this.hands['left'].fingerColors[i].color = ''
            }
            for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                this.hands['right'].fingerColors[i].color = ''
            }

            axios.post('http://trig_nails/cancel', {
                payment
            })

            this.hands = {
                selectedHand : 'left',
                left : {
                    selectedFinger : 0,
                    fingerColors : [
                        {color : '', type : 0, bone: 'SKEL_L_Finger42'},
                        {color : '', type : 0, bone: 'SKEL_L_Finger32'},
                        {color : '', type : 0, bone: 'SKEL_L_Finger22'},
                        {color : '', type : 0,bone: 'SKEL_L_Finger12'},
                        {color : '', type : 0, bone: 'SKEL_L_Finger02'},
                        {color : '', type : 0},
    
                    ]
                },
                
                right : {
                    selectedFinger : 0,
                    fingerColors : [
                        {color : '', type : 0, bone: 'SKEL_R_Finger42'},
                        {color : '', type : 0, bone: 'SKEL_R_Finger32'},
                        {color : '', type : 0, bone: 'SKEL_R_Finger22'},
                        {color : '', type : 0,bone: 'SKEL_R_Finger12'},
                        {color : '', type : 0, bone: 'SKEL_R_Finger02'},
                        {color : '', type : 0},
                    ]
                },
            }
        },

      
        updateNails(Nails) {
            this.nailTypes = []
            for(i=0;i<Object.keys(Nails).length;i++) {
                this.nailTypes.push({
                    type: i,
                    photo : './assets/tipo'+(i+1)+'.png'
                })
            }
        },
        openNUI(data,prices){
            this.screen = 2
            this.menu = !this.menu
            this.prices = prices
            if(data.allHands) {
                this.allHandsInfos = {
                    active: true,
                    type: data.allHands[0],
                    color: this.colorOptions[data.allHands[1]]
                }
                
                for(i=0;i < this.hands['left'].fingerColors.length;i++) {
                    this.hands['left'].fingerColors[i].color = this.colorOptions[data.allHands[1]]
                }
                for(i=0;i < this.hands['right'].fingerColors.length;i++) {
                    this.hands['right'].fingerColors[i].color = this.colorOptions[data.allHands[1]]
                }
            } else if (data.Nail) {
                /* quando tem unha, coloca all hands dps tira confirmando tem q zerar tabela custom */

                let selectedHand = this.hands.selectedHand
                let selectedFinger = this.hands[selectedHand].selectedFinger
                for (t of Object.keys(this.hands)) {
                    if (t != 'selectedHand') {
                        for (v of Object.keys(this.hands[t])) {
                            for (e of Object.keys(this.hands[t][v])) {
                                if (parseInt(e) < 0) continue
                                let j = parseInt(e) 
                                let aux = data.Nail[t][(j).toString()]
                                let arr = this.hands[t][v][j.toString()]
                                if (aux && aux.color && (arr.color != aux.color)) {
                                    this.hands[t][v][(j -1).toString()].color = this.colorOptions[aux.color-1]
                                    this.hands[t][v][(j -1).toString()].type = aux.type
                                    this.hands[t][v][(j -1).toString()].purchased = true
                                    if (selectedFinger == (j)) {
                                        this.hands[t].fingerColors[selectedFinger].color = this.colorOptions[aux.color-1]
                                        this.hands[t].fingerColors[selectedFinger].type = aux.type
                                    } 
                                }
                            }
                        }
                    }
                }
                

            }
        }
    },


    

    mounted() {

        document.addEventListener('keydown', (event) => {
            const keyName = event.key;

            if(app.menu && keyName == 'Escape') {
                if(app.modalActive != 0) {
                    this.insertModal(0)
                } else if(app.modalActive == 0) {
                    this.closeUI()
                    axios.post('http://trig_nails/closeUI')
                }
            }

        });

        document.addEventListener('keypress', (event) => {
            var name = event.key;
            var code = event.code;
            if(app.modalActive != 0) return
            if(name == 'a') {
              app.rotateDirection('left')
            } else if (name == 'd') {
              app.rotateDirection('right')
            }
        }, false);


        window.addEventListener('message', ({data}) => {
            const [name,...args] = data;
            app[name](...args);
        })


    },

});
