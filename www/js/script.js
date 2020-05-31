'use strict';

//Карусель верхнего модуля
//помечаем код для удобства
let i = 1;
for (let li of carousel.querySelectorAll('li')) {
    li.style.position = 'relative';
    li.insertAdjacentHTML(
        'beforeend',
        '<span style="position:absolute;left:0;top:0">${i}</span>'
    );
    i++;
}

//конфигурация
let width = 1520; //ширина картинки верхнего блолка
let count = 1; //видимое количество картинок верхнего блока
let numberImg = 5; //количество картинок верхнего блока
let numPoint = 0; //текущая картинка, точка верхнего блока

let list = carousel.querySelector('ul');
let listElems = carousel.querySelectorAll('li');

let position = 0; //положение прокрутки

//сдвиг в лево Размеры зависят от картинок в верстке
carousel.querySelector('.prev').onclick = function () {
    position += width * count;
    if (position > 0) position = -1 * (width * (numberImg - count)); //строка возвращает на начало списка

    position = Math.min(position, 0);
    list.style.marginLeft = position + 'px'; //обращение у стилю тэга ul

    numPoint--; //данные для точек
    if (numPoint < 0) numPoint = numberImg - 1;
    pointActive(numPoint);
};

//сдвиг в право Размеры зависят от картинок в верстке
carousel.querySelector('.next').onclick = function () {
    position -= width * count;
    if (position <= -1 * (width * numberImg)) position = 0; // строка перемещает на конец списка

    position = Math.max(position, -width * (listElems.length - count));
    list.style.marginLeft = position + 'px'; //обращение у стилю тэга ul

    numPoint++; //данные для точек
    if (numPoint > 4) numPoint = 0;
    pointActive(numPoint);
};
//Делаем зависимость точек
let point = points.querySelectorAll('a');

//подстветка точек
function pointActive(num) {
    point.forEach((elem) => {
        elem.classList.remove('slider__point_active');
    });
    point[num].classList.add('slider__point_active');
}

//курусель отзывов
/*******************************************************************************/
let j = 1;
for (let li of carousel_1.querySelectorAll('li')) {
    li.style.position = 'relative';
    li.insertAdjacentHTML(
        'beforeend',
        '<span style="position:absolute;left:0;top:0">${i}</span>'
    );
    j++;
}

let width_1 = 330; //ишрина картинки
let count_1 = 3; //видимое количество картинок
let numberImg_1 = 9; //количество картинок
let numPoint_1 = 0; // текущаяя картинка

let list_1 = carousel_1.querySelector('ul');
let listElems_1 = carousel_1.querySelectorAll('li');

let position_1 = 0; //положение прокрутки

//сдвиг в лево
carousel_1.querySelector('.prev_1').onclick = function () {
    position_1 += width_1 * count_1;
    // if (position_1 > 0) position_1 = -1 * (width_1 * (numberImg_1 - count_1)); //строка возвращает на начало списка

    position_1 = Math.min(position_1, 0);
    list_1.style.marginLeft = position_1 + 'px'; //обращение к ul
    console.log(position_1);
};

//сдвиг в право
carousel_1.querySelector('.next_1').onclick = function () {
    position_1 -= width_1 * count_1;
    // if (position_1 <= -1 * (width_1 * numberImg_1)) position_1 = 0; // строка перемещает на конец списка

    position_1 = Math.max(
        position_1,
        -width_1 * (listElems_1.length - count_1)
    );
    list_1.style.marginLeft = position_1 + 'px'; //обращение у стилю тэга ul
    console.log(position_1);
};

$(document).ready(function () {
    $('.client_phone').mask('+7(999)999-99-99');
});

class newError {
    constructor(object, classNameIn, classNameOut) {
        this.object = object;
        this.classNameIn = classNameIn;
        this.classNameOut = classNameOut;
        this.to1;
        this.to2;
    }

    showError() {
        clearTimeout(this.to1);
        // clearTimeout(this.to2);
        this.hideError();
        this.to1 = setTimeout(function () {
            object.classList.add(classNameIn);
            object.classList.remove(classNameOut);
            // this.to2 = setTimeout(function () {
            //     $('.end_stub_container').remove();
            // }, 1000);
        }, 3500);
    }

    hideError() {
        object.classList.remove(classNameIn);
        object.classList.add(classNameOut);
    }
}

// let error1 = new newError(object, classNameIn, classNameOut);

class Mailing {
    constructor() {
        this.name = '';
        this.phone = '';
        this.device = '';
        this.defect = '';
        this.brand = '';
        this.description = '';
        this.city = '';
        this.reqType = '';
        this.btnsRecall = document.querySelectorAll('.recall_btn');
        this.btnsRepair = document.querySelectorAll('.repair_btn');
        this.btnsCallmaster = document.querySelectorAll('.master_btn');
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

    sendMailRepairRequest(modal) {
        let sendData = {
            apiMethod: 'sendMailRepairRequest',
            postData: {
                name: this.name,
                phone: this.phone,
                device: this.device,
                defect: this.defect,
                city: this.city,
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                    this.closeActiveModal(modal);
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
            });
    }

    sendMailMasterRequest(modal) {
        let sendData = {
            apiMethod: 'sendMailMasterRequest',
            postData: {
                name: this.name,
                phone: this.phone,
                brand: this.brand,
                desc: this.description,
                city: this.city,
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                    this.closeActiveModal(modal);
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
            });
    }

    sendMailPhoneRequest(modal) {
        let sendData = {
            apiMethod: 'sendMailPhoneRequest',
            postData: {
                name: this.name,
                phone: this.phone,
                city: this.city,
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                    this.closeActiveModal(modal);
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
            });
    }

    init() {
        this.btnsRecall.forEach((btn) => {
            btn.addEventListener('click', () => {
                let parent = btn.parentElement;
                let nameBlock = parent.querySelector('.client_name');
                let phoneBlock = parent.querySelector('.client_phone');
                this.name = nameBlock.value;
                this.phone = phoneBlock.value;
                let check = this._checkRecall(nameBlock, phoneBlock);
                if (check) {
                    this.sendMailPhoneRequest(parent);
                }
            });
        });
        this.btnsRepair.forEach((btn) => {
            btn.addEventListener('click', () => {
                let parent = btn.parentElement;
                let nameBlock = parent.querySelector('.client_name');
                let phoneBlock = parent.querySelector('.client_phone');
                let deviceBlock = parent.querySelector('.device');
                let defectBlock = parent.querySelector('.defect');
                this.name = nameBlock.value;
                this.phone = phoneBlock.value;
                this.device = deviceBlock ? deviceBlock.value : '';
                this.defect = defectBlock ? defectBlock.value : '';
                let check = this._checkRepair(
                    nameBlock,
                    phoneBlock,
                    deviceBlock,
                    defectBlock
                );
                if (check) {
                    this.sendMailRepairRequest(parent);
                }
            });
        });
        this.btnsCallmaster.forEach((btn) => {
            btn.addEventListener('click', () => {
                let parent = btn.parentElement;
                let nameBlock = parent.querySelector('.client_name');
                let phoneBlock = parent.querySelector('.client_phone');
                let brandBlock = parent.querySelector('.brand');
                let descriptionBlock = parent.querySelector('.description');
                this.name = nameBlock.value;
                this.phone = phoneBlock.value;
                this.brand = brandBlock ? brandBlock.value : '';
                this.description = descriptionBlock
                    ? descriptionBlock.value
                    : '';
                let check = this._checkRepair(
                    nameBlock,
                    phoneBlock,
                    brandBlock,
                    descriptionBlock
                );
                if (check) {
                    this.sendMailMasterRequest(parent);
                }
            });
        });
    }

    _checkRecall(name, phone) {
        let checkArr = {
            name: {
                check: false,
                el: name,
            },
            phone: {
                check: false,
                el: phone,
            },
        };
        checkArr.name.check = name.value === '' ? false : true;
        checkArr.phone.check = phone.value.length !== 16 ? false : true;
        if (checkArr.name.check && checkArr.phone.check) {
            this._changeColorByCheck(checkArr);
            return true;
        }

        this._changeColorByCheck(checkArr);

        return false;
    }

    _checkRepair(name, phone, defect, device) {
        let checkArr = {
            name: {
                check: false,
                el: name,
            },
            phone: {
                check: false,
                el: phone,
            },
            defect: {
                check: false,
                el: defect,
            },
            device: {
                check: false,
                el: device,
            },
        };
        checkArr.name.check = name.value === '' ? false : true;
        checkArr.phone.check = phone.value.length !== 16 ? false : true;
        checkArr.defect.check = defect.value === '' ? false : true;
        checkArr.device.check = device.value === '' ? false : true;

        if (
            checkArr.name.check &&
            checkArr.phone.check &&
            checkArr.defect.check &&
            checkArr.device.check
        ) {
            this._changeColorByCheck(checkArr);
            return true;
        }
        this._changeColorByCheck(checkArr);

        return false;
    }

    _changeColorByCheck(checkArr) {
        for (let elem in checkArr) {
            let elemVal = checkArr[elem];
            if (!elemVal.check) {
                elemVal.el.classList.add('input_err');
            } else {
                elemVal.el.classList.remove('input_err');
            }
        }
    }

    closeActiveModal(modal) {
        let substrate = modal.parentElement;
        substrate.classList.add('screen_off');
        let inputs = modal.querySelectorAll('.input');
        inputs.forEach((element) => {
            element.value = '';
        });
    }

    showOK() {
        let substrate = modal.parentElement;
        substrate.classList.add('screen_off');
        let inputs = modal.querySelectorAll('.input');
        inputs.forEach((element) => {
            element.value = '';
        });
    }
}
let mailing = new Mailing();

mailing.init();
