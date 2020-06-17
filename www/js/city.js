'use strict'

class City {
    constructor() {
        this.data = [];
        this.urlCity = '../js/cities.json';
        this.nameCity = document.querySelector('.city__city');
        this.nameCityFooter = document.querySelector('.city__city-footer');
        this.nameCityFooter2 = document.querySelector('.city__city-footer2');
        this.phoneCity = document.querySelector('.city__phone');
        this.phoneCityFooter = document.querySelector('.city__city-footer-phone');
        this.block = document.querySelector('.modal_city_block');
        this.numberCity = 0; //город по умолчанию
        this.darkBack = document.querySelector('.darkback_sities');
        this.modalBlockSities = document.querySelector('.modal_block-sities');
        this.result = 1;
        this.informationCity = 0;
        this.informationBlock = document.querySelector('.inf_data');
    }

    async _readData(url) {
        let response = await fetch(url);
        this.data = await response.json();
        console.log(this.data);
        if (this.result == 1) this.showBlockSities(this.data);
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
                <div class="modal_city_block_content">
                    <button data-town=${i} class="btn_city">
                        ${town}
                    </button>
                </div>`
        }
        this.block.innerHTML = blockSities;

        this.btnCity = document.querySelectorAll('.btn_city');
        this.checkClickButtonCity(this.btnCity);
    }

    checkClickButtonCity(btn) {
        console.log(btn);
        btn.forEach((elem) => {
            elem.addEventListener('click', (event) => {
                console.log(event.srcElement.dataset.town);
                this.numberCity = event.srcElement.dataset.town;
                this.closeModalCities();
                setTimeout(() => {
                    this.reloadList();
                }, 500);
            });
        });
    }

    //перезагрузка страницы
    reloadList() {
        window.location.reload();
    }

    checkInformation() {
        this.informationCity = this.informationBlock.dataset.city_id;
        this.numberCity = this.informationCity;
        this.result = this.informationBlock.dataset.city_inf;

        if (this.result == 1) {
            this._readData(this.urlCity);
        } else {
            this._readData(this.urlCity);
            this.closeModalCities();
        }
    }
    runChangeCity() {
        this.nameCity.addEventListener('click', () => {
            this._changeCity();
        });
        this.nameCityFooter.addEventListener('click', () => {
            this._changeCity();
        });
        this.nameCityFooter2.addEventListener('click', () => {
            this._changeCity();
        });
    }
    _changeCity() {
        this.result = 1;
        this.onModalCities();
        this.showBlockSities(this.data);
    }

    onModalCities() {
        this.darkBack.classList.remove('modal_off');
        this.darkBack.classList.remove('screen_off');
        this.modalBlockSities.classList.remove('screen_off');
    }

    closeModalCities() {
        this.darkBack.classList.add('modal_off');
        this.darkBack.classList.add('screen_off');
        this.modalBlockSities.classList.add('screen_off');

        setTimeout(() => this.showCity(this.data), 100);

        this.result = 0;
    }

    showCity(data) {
        let number = this.numberCity;

        let town = data[number].town;
        data[number].town == 'Тюмен' ? this.nameCityFooter2.innerHTML = (town + 'ь') : this.nameCityFooter2.innerHTML = town;
        data[number].town == 'Тюмен' ? town = town + 'и' : town = town + 'е';

        this.nameCity.innerHTML = town;
        this.nameCityFooter.innerHTML = town;
        this.phoneCity.innerHTML = data[number].phone;
        this.phoneCityFooter.innerHTML = data[number].phone;

        this.setCityId(this.numberCity, this.result);
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
        // .catch((error) => {
        //     // что делать в случае ошибок прочих
        //     console.log('ERROR #2');
        // });
    }

    init() {
        if (this.result == 0) {
            this.checkInformation()
        } else {
            this.onModalCities();
            this.checkInformation()
        }

        this.runChangeCity();

        // window.location.reload();

        // if (this.result) {
        //     this._readData(this.urlCity);
        // } else {
        //     this.closeModalCities();
        // }
    }
}

window.onload = function () {
    let city = new City;
    city.init();
}



