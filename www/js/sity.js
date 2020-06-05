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
        this.informationSity = 0;
        this.informationBlock = document.querySelector('.inf_data');
    }

    async _readData(url) {
        let response = await fetch(url);
        this.data = await response.json();
        console.log(this.data);
        if (this.result == 'true') this.showBlockSities(this.data);
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

    checkInformation() {
        this.informationSity = this.informationBlock.dataset.city_id;
        this.numberSity = this.informationSity;
        this.result = this.informationBlock.dataset.sity_inf;
        console.log(this.informationSity + ' ' + this.result);

        if (this.result == 'true') {
            this._readData(this.urlSity);
        } else {
            this._readData(this.urlSity);
            this.closeModalSities();
        }
    }

    closeModalSities() {
        this.darkBack.classList.add('modal_off');
        this.darkBack.classList.add('screen_off');
        this.modalBlockSities.classList.add('screen_off');

        setTimeout(() => this.showSity(this.data), 100);

        this.result = false;
    }

    showSity(data) {
        let number = this.numberSity;
        console.log(data[number].town + ' ' + data[number].adress + ' ' + data[number].phone);

        let town = data[number].town;
        data[number].town == 'Тюмен' ? town = town + 'и' : town = town + 'е';

        this.nameSity.innerHTML = town;
        this.phoneSity.innerHTML = data[number].phone;

        this.setCityId(this.numberSity, this.result);
    }

    _getJson(url, data) {
        return $.post({
            url: url,
            data: data,
            success: function (data) {
                //data приходят те данные, который прислал на сервер
                if (data.result !== 'OK') {
                    console.log('ERROR_SEND_DATA');
                }
            },
        });
    }

    setCityId(id, inf) {
        let sendData = {
            apiMethod: 'setCityId',
            postData: {
                cityId: id,
                cityInf: inf
            },
        };
        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    // что делать в случае успешного выполнения
                    console.log('ALL_OK');
                } else {
                    // что делать в случае неудачного выполнения
                    console.log('ERROR #1');
                }
            })
            .catch((error) => {
                // что делать в случае ошибок прочих
                console.log('ERROR #2');
            });
    }

    init() {
        this.checkInformation();

        // if (this.result) {
        //     this._readData(this.urlSity);
        // } else {
        //     this.closeModalSities();
        // }
    }
}

let sity = new Sity;
sity.init();

