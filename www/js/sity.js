'use strict'

class Sity {
    constructor() {
        this.data = [];
        this.urlSity = '../js/sities.json';
        this.nameSity = document.querySelector('.sity__sity');
        this.phoneSity = document.querySelector('.sity__phone');
        this.block = document.querySelector('.modal_sity_block');
        this.numberSity = 0; //город по умолчанию
        this.darkBack = document.querySelector('.darkback_sities');
        this.modalBlockSities = document.querySelector('.modal_block-sities');
        this.result = true;
    }

    async _readData(url) {
        let response = await fetch(url);
        this.data = await response.json();
        console.log(this.data);
        this.showBlockSities(this.data);
    }

    showBlockSities(data) {
        let blockSities = '';
        let town = '';
        for (let i = 0; i < data.length; i++) {

            if (data[i].town == 'Тюмен') {
                town = data[i].town + 'ь'
            } else {
                town = data[i].town;
            }

            blockSities = blockSities + `
                <div class="modal_sity_block_content">
                    <button data-town=${i} class="btn_sity">
                        ${town}
                    </button>
                </div>`
        }
        this.block.innerHTML = blockSities;

        this.btnSity = document.querySelectorAll('.btn_sity');
        this.checkClickButtonSity(this.btnSity);
    }

    checkClickButtonSity(btn) {
        console.log(btn);
        btn.forEach((elem) => {
            elem.addEventListener('click', (event) => {
                console.log(event.srcElement.dataset.town);
                this.numberSity = event.srcElement.dataset.town;
                this.closeModalSities();
            });
        });
    }

    closeModalSities() {
        this.darkBack.classList.add('modal_off');
        this.darkBack.classList.add('screen_off');
        this.modalBlockSities.classList.add('screen_off');

        this.showSity(this.data);
        this.result = false;
    }

    showSity(data) {
        let number = this.numberSity;
        console.log(data[number].town + ' ' + data[number].adress + ' ' + data[number].phone);

        let town = data[number].town;
        data[number].town == 'Тюмен' ? town = town + 'и' : town = town + 'е';

        this.nameSity.innerHTML = town;
        this.phoneSity.innerHTML = data[number].phone;
    }

    init() {

        if (this.result) {
            this._readData(this.urlSity);
        } else {
            this.closeModalSities();
        }
    }
}

let sity = new Sity;
sity.init();

