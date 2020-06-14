'use strict';

class Brand {
    constructor() {
        this.dataBrand = [];
        this.urlDataBrand = '../js/brands.json';
        this.blockBrand = '';
        this.ulBrand = document.querySelector('.image_br');
        this.nameTechnic = '';
    }

    async _getDataBrand(url) {
        let response = await fetch(url);
        this.dataBrand = await response.json();
        this.createBlock();
        console.log(this.dataBrand);
    }

    //получаем и обрабатываем URL по брендам
    getUrlTechnic() {
        let url = new URL(document.URL);
        let arrUrl = [...url.pathname];
        let removElem = arrUrl.splice(0, 1);
        let name = arrUrl.join('');

        if (name == 'washing_machine' || name == 'dishwasher' || name == 'refrigerator' || name == 'oven' || name == 'hob') {
            this.nameTechnic = name;
        } else {
            this.checkUrlTechnic(name);
        }

        console.log(this.nameTechnic);
    }

    //проверяем URL на выбранный бренд
    checkUrlTechnic(nameUrl) {
        let numberElement = nameUrl.indexOf('_');
        let arrRemove = [...nameUrl];
        let removeEl = arrRemove.splice(0, numberElement + 1);
        this.nameTechnic = arrRemove.join('');
    }

    createBlock() {
        for (let i = 0; i < this.dataBrand.length; i++) {
            this.blockBrand = this.blockBrand + `
                <li>
                    <a href="/${this.dataBrand[i].brandName}_${this.nameTechnic}" class="gallery_br_link" style="                    
                            background-image: url(../img/brands/${this.dataBrand[i].imgBrand}); 
                            background-size: contain;
                            background-repeat: no-repeat;
                            background-position: center;">                    
                    </a>
                </li>
                `;
        }

        this.ulBrand.innerHTML = this.blockBrand;
    }

    init() {
        this._getDataBrand(this.urlDataBrand);
        this.getUrlTechnic();
    }
}

let brand = new Brand();
brand.init();

setTimeout(() => {
    //---------------------------------------------
    //карусель брендов
    let k = 1;
    for (let li of carousel_br.querySelectorAll('li')) {
        li.style.position = 'relative';
        li.insertAdjacentHTML('beforeend', '<span style="position:absolute;left:0;top:0">${i}</span>');
        k++;
    };


    //конфигурация
    let width_br = 250; //ширина картинки 
    let count_br = 3; //сдиг на количество картинок
    let numberImg_br = brand.dataBrand.length; //количество картинок


    let list_br = carousel_br.querySelector('ul');
    let listElems_br = carousel_br.querySelectorAll('li');

    let position_br = 0; //положение прокрутки

    //в левую сторону
    carousel_br.querySelector('.prev_br').onclick = function () {
        position_br += width_br * count_br;

        position_br = Math.min(position_br, 0);
        list_br.style.marginLeft = position_br + 'px'; //обращение у стилю тэга ul
    };
    //в правую сторону
    carousel_br.querySelector('.next_br').onclick = function () {
        position_br -= width_br * count_br;

        position_br = Math.max(position_br, -width_br * (listElems_br.length - count_br));
        list_br.style.marginLeft = position_br + 'px'; //обращение у стилю тэга ul        
    };
}, 500);
