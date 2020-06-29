'use strict';

class Brand {
    constructor() {
        this.dataBrand = [];
        this.urlDataBrand = '../js/brands.json';
        this.blockBrand = '';
        this.ulBrand = document.querySelector('.image_br');
        this.nameTechnic = '';
        this.btnBrandAll = document.getElementById('btn_brand_all'); //кнопка талибцы брендов
        this.btnBrandCondition = true; //состояние кнопки таблицы брендов
    }

    async _getDataBrand(url) {
        let response = await fetch(url);
        this.dataBrand = await response.json();
        setTimeout(() => {
            this.createBlock()
        }, 100);
    }

    //получаем и обрабатываем URL по брендам
    getUrlTechnic() {
        let url = new URL(document.URL);
        let arrUrl = [...url.pathname];
        let removElem = arrUrl.splice(0, 1);
        let name = arrUrl.join('');

        if (this.checkBrandRepeat(name)) {
            this.nameTechnic = name;
        } else {
            this.checkUrlTechnic(name);
        }
        // console.log(this.nameTechnic);
    }

    checkBrandRepeat(nameTech) {
        let checkWord = nameTech.slice(0, 3);
        // console.log(checkWord);
        if (checkWord == 'was' || checkWord == 'dis' || checkWord == 'ref' || checkWord == 'ove' || checkWord == 'hob') {
            return true;
        } else {
            return false;
        }
    }

    //убираем повторный бренд в URL
    checkUrlTechnic(nameUrl) {
        let numberElement = nameUrl.indexOf('_');
        let arrRemove = [...nameUrl];
        let removeEl = arrRemove.splice(0, numberElement + 1);
        this.nameTechnic = arrRemove.join('');
    }

    createBlock() {
        this.blockBrand = `<table class="table_brand">`;
        for (let i = 0; i < this.dataBrand.length;) {

            for (let j = 0; j < (this.dataBrand.length / 5); j++) {
                this.blockBrand = this.blockBrand + `<tr class="table_line_brand">`

                for (let k = 0; k < 5; k++) {
                    this.blockBrand = this.blockBrand + `
                    <td class="table_cell_brand">
                        <a href="/${this.dataBrand[i].brandName}_${this.nameTechnic}" class="gallery_br_link" 
                            style="background-image: url(../img/brands/${this.dataBrand[i].imgBrand});">                    
                        </a>
                    </td>`;
                    i++;

                    if (i == this.dataBrand.length) break;
                }
                this.blockBrand = this.blockBrand + `</tr>`;
            }
            this.blockBrand = this.blockBrand + `</table>`;
        }
        this.ulBrand.innerHTML = this.blockBrand;
    }

    checkClickBtnBrandAll() {
        this.btnBrandAll.addEventListener('click', () => {
            let galleryBr = document.querySelector('.gallery_br');

            if (this.btnBrandCondition) {
                galleryBr.style.height = '100%';
                this.btnBrandAll.innerHTML = 'убрать';
                this.btnBrandCondition = false;
            } else {
                galleryBr.style.height = '300px';
                this.btnBrandAll.innerHTML = 'показать все бренды';
                this.btnBrandCondition = true;
            }
        })
    }

    init() {
        this._getDataBrand(this.urlDataBrand);
        this.getUrlTechnic();
        this.checkClickBtnBrandAll();
    }
}

let brand = new Brand();
brand.init();

