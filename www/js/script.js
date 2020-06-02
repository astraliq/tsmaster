'use strict';

const transitionDelay = 500; // длина затемнения модальных окон в милисекундах

//Карусель верхнего модуля
//помечаем код для удобства
let i = 1;
for (let li of carousel.querySelectorAll('li')) {
    li.style.position = 'relative';
    li.insertAdjacentHTML('beforeend', '<span style="position:absolute;left:0;top:0">${i}</span>');
    i++;
}

//конфигурация
let width = 1520; //ширина картинки верхнего блолка
let count = 1; //видимое количество картинок верхнего блока
let numberImg = 5; //количество картинок верхнего блока
let numPoint = 0; //текущая картинка, точка верхнего блока

let list = carousel.querySelector('ul');
let listElems = carousel.querySelectorAll('li');
let point = points.querySelectorAll('a');

var position = 0; //положение прокрутки

//переход по точкам верхнего слайдера
point.forEach((element) => {
    element.addEventListener('click', (number) => {
        let pointData = number.srcElement.dataset.point;
        position = -1 * width * pointData; //меняем позицию слайдера согласно точке
        list.style.marginLeft = position + 'px'; //обращение к стилю тэга ul
        pointActive(pointData);
    });
});

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
    li.insertAdjacentHTML('beforeend', '<span style="position:absolute;left:0;top:0">${i}</span>');
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
};

//сдвиг в право
carousel_1.querySelector('.next_1').onclick = function () {
    position_1 -= width_1 * count_1;
    // if (position_1 <= -1 * (width_1 * numberImg_1)) position_1 = 0; // строка перемещает на конец списка

    position_1 = Math.max(position_1, -width_1 * (listElems_1.length - count_1));
    list_1.style.marginLeft = position_1 + 'px'; //обращение у стилю тэга ul
};
//курусель отзывов малая
/*******************************************************************************/
let g = 1;
let carousel_2 = document.getElementById('carousel_2');
if (carousel_2) {
    for (let li of carousel_2.querySelectorAll('li')) {
        li.style.position = 'relative';
        li.insertAdjacentHTML('beforeend', '<span style="position:absolute;left:0;top:0">${i}</span>');
        g++;
    }

    let width_2 = 255; //ишрина картинки
    let count_2 = 1; //видимое количество картинок
    let numberImg_2 = 9; //количество картинок
    let numPoint_2 = 0; // текущаяя картинка

    let list_2 = carousel_2.querySelector('ul');
    let listElems_2 = carousel_2.querySelectorAll('li');

    let position_2 = 0; //положение прокрутки

    //сдвиг в лево
    carousel_2.querySelector('.prev_2').onclick = function () {
        position_2 += width_2 * count_2;
        // if (position_1 > 0) position_2 = -1 * (width_2 * (numberImg_2 - count_2)); //строка возвращает на начало списка

        position_2 = Math.min(position_2, 0);
        list_2.style.marginLeft = position_2 + 'px'; //обращение к ul
    };

    //сдвиг в право
    carousel_2.querySelector('.next_2').onclick = function () {
        position_2 -= width_2 * count_2;
        // if (position_2 <= -1 * (width_2 * numberImg_2)) position_2 = 0; // строка перемещает на конец списка

        position_2 = Math.max(position_2, -width_2 * (listElems_2.length - count_2));
        list_2.style.marginLeft = position_2 + 'px'; //обращение у стилю тэга ul
    };
}

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

$(document).ready(function () {
    $('.client_phone').mask('+7(999)999-99-99');
});

class Mailing {
    constructor(checkType) {
        this.name = '';
        this.phone = '';
        this.device = '';
        this.defect = '';
        this.brand = '';
        this.description = '';
        this.rate = '';
        this.review = '';
        this.city = '';
        this.reqType = '';
        this.btnsRecall = document.querySelectorAll('.button-phone');
        this.btnsRepair = document.querySelectorAll('.button-repair');
        this.btnsCallmaster = document.querySelectorAll('.button-master');
        this.btnsReview = document.querySelectorAll('.button-review');

        this.dB_Class = '';
        this.mT_Class = '';
        this.cC_Class = '';
        this.btnClass = '';

        this.checkType = checkType;
    }

    init() {
        let btnPhone = document.querySelector('.btn-phone');
        let btnMaster = document.querySelector('.btn-master');
        let btnReview = document.querySelector('.btn-review');

        if (btnPhone) {
            btnPhone.onclick = (e) => {
                e.preventDefault();
                this.firstCheck('phone');
            };
        }

        if (btnMaster) {
            btnMaster.onclick = (e) => {
                e.preventDefault();
                this.firstCheck('master');
            };
        }

        if (btnReview) {
            btnReview.onclick = (e) => {
                e.preventDefault();
                this.firstCheck('review');
            };
        }

        this.btnsRecall.forEach((btn) => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
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
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                let parent = btn.parentElement.parentElement;
                let nameBlock = parent.querySelector('.client_name');
                let phoneBlock = parent.querySelector('.client_phone');
                let deviceBlock = parent.querySelector('.device');
                let defectBlock = parent.querySelector('.defect');
                this.name = nameBlock.value;
                this.phone = phoneBlock.value;
                this.device = deviceBlock ? deviceBlock[deviceBlock.selectedIndex].text : '';
                this.defect = defectBlock ? defectBlock[defectBlock.selectedIndex].text : '';
                let check = this._checkRepair(nameBlock, phoneBlock, defectBlock, deviceBlock);
                if (check) {
                    this.sendMailRepairRequest(parent);
                }
            });
        });
        this.btnsCallmaster.forEach((btn) => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                let parent = btn.parentElement;
                let nameBlock = parent.querySelector('.client_name');
                let phoneBlock = parent.querySelector('.client_phone');
                let defectBlock = parent.querySelector('.defect');
                let deviceBlock = parent.querySelector('.device');
                this.name = nameBlock.value;
                this.phone = phoneBlock.value;
                this.device = deviceBlock ? deviceBlock[deviceBlock.selectedIndex].text : '';
                this.defect = defectBlock ? defectBlock.value : '';
                let check = this._checkMaster(nameBlock, phoneBlock, defectBlock, deviceBlock);
                if (check) {
                    this.sendMailMasterRequest(parent);
                }
            });
        });
        this.btnsReview.forEach((btn) => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                let parent = btn.parentElement;
                let nameBlock = parent.querySelector('.client_name');
                let phoneBlock = parent.querySelector('.client_phone');
                let rateBlock = parent.querySelector('.rate');
                let reviewBlock = parent.querySelector('.review');
                this.name = nameBlock.value;
                this.phone = phoneBlock.value;
                this.rate = rateBlock ? rateBlock.value : '';
                this.review = reviewBlock ? reviewBlock.value : '';
                let check = this._checkReview(nameBlock, phoneBlock, rateBlock, reviewBlock);
                if (check) {
                    this.sendMailReview(parent);
                }
            });
        });
    }

    firstCheck(check) {
        let darkBack;
        let modalType;
        let closeCross;
        let btnAction;

        if (check == 'phone') {
            darkBack = 'darkback-phone';
            modalType = 'modal-phone';
            closeCross = 'close-phone';
            btnAction = 'button-phone';
        } else if (check == 'master') {
            darkBack = 'darkback-master';
            modalType = 'modal-master';
            closeCross = 'close-master';
            btnAction = 'button-master';
        } else if (check == 'review') {
            darkBack = 'darkback-review';
            modalType = 'modal-review';
            closeCross = 'close-review';
            btnAction = 'button-review';
        }

        this.renderModal(darkBack, modalType, closeCross, btnAction, check);
        this._addEvents(darkBack, modalType, closeCross, btnAction, check);
    }

    _addEvents(dBack, mType, cCross, btnA, check) {
        this.cC_Class.onclick = (e) => {
            e.preventDefault();
            this.closeModal(dBack, mType);
        };
    }

    renderModal(dBack, mType, cCross, btnA, check) {
        this.dB_Class = document.querySelector(`.${dBack}`);
        this.mT_Class = document.querySelector(`.${mType}`);
        this.cC_Class = document.querySelector(`.${cCross}`);
        this.btnClass = document.querySelector(`.${btnA}`);
        this.dB_Class.classList.remove('screen_off');
        this.mT_Class.classList.remove('screen_off');
        setTimeout(() => {
            this.dB_Class.classList.remove('modal_off');
        }, 10);
        // document.addEventListener('mouseup', (e) => {
        //     if (mType != e.target && e.currentTarget.parentNode != mType) {
        //         dB_Class.classList.add('screen_off');
        //     }
        // });
    }

    showMailing(modal) {
        let substrate = modal.parentElement;
        substrate.classList.add('modal_off');
        setTimeout(function () {
            substrate.classList.add('screen_off');
        }, transitionDelay);
        let inputs = modal.querySelectorAll('.input');
        inputs.forEach((element) => {
            element.value = '';
        });
    }

    renderOk(check) {
        let str;
        let renderDiv = document.getElementById('confirm-mailing');
        if (check == 'phone') {
            str = `<div class="after-button__title modal-text_margin">Ваша заявка принята.</div>
                   <div class="after-button__text">Наш менеджер свяжется с вами в ближайшее время.</div>`;
        } else if (check == 'master') {
            str = `<div class="after-button__title modal-text_margin">Ваша заявка принята.</div>
            <div class="after-button__text">Наш мастер свяжется с вами в ближайшее время и поможет устранить неисправность.</div>`;
        } else {
            str = `<div class="after-button__title_review modal-text_margin">Мы получили ваш отзыв.</div>
            <div class="after-button__text_review">В некоторых случаях, наш менеджер может связаться с вами для уточнения деталей.<br><br>Спасибо.</div>`;
        }
        renderDiv.querySelector('.modal-window').innerHTML = str;
        renderDiv.classList.remove('screen_off');
        setTimeout(function () {
            renderDiv.classList.remove('modal_off');
        }, 10);
        setTimeout(function () {
            renderDiv.classList.add('modal_off');
            setTimeout(function () {
                renderDiv.classList.add('screen_off');
                renderDiv.classList.remove('modal_off');
            }, 2500);
        }, 2500);
    }

    closeModal(dBack, mType) {
        let dB_Class = document.querySelector(`.${dBack}`);
        let mT_Class = document.querySelector(`.${mType}`);
        dB_Class.classList.add('modal_off');
        setTimeout(function () {
            dB_Class.classList.add('screen_off');
            mT_Class.classList.add('screen_off');
        }, 500);
    }

    clearInputs(modal) {
        let inputs = modal.querySelectorAll('.input');
        inputs.forEach((element) => {
            element.value = '';
        });
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
                    this.clearInputs(modal);
                    this.renderOk('repair');
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
                device: this.device,
                defect: this.defect,
                city: this.city,
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                    this.closeModal('darkback', 'modal-window');
                    this.renderOk('master');
                    this.clearInputs(modal);
                } else {
                    console.log('ERROR_SENDING');
                }
                this.clearInputs(modal);
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
                    if (modal.classList.contains('form-question__form')) {
                        this.clearInputs(modal);
                    } else {
                        this.closeModal('darkback', 'modal-window');
                        this.clearInputs(modal);
                    }
                    this.renderOk('phone');
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
            });
    }

    sendMailReview(modal) {
        let sendData = {
            apiMethod: 'sendMailReview',
            postData: {
                name: this.name,
                phone: this.phone,
                rate: this.rate,
                review: this.review,
                city: this.city,
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                    this.closeModal('darkback', 'modal-window');
                    this.renderOk('review');
                    this.clearInputs(modal);
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
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
        checkArr.defect.check = defect[defect.selectedIndex].text === '' ? false : true;
        checkArr.device.check = device[device.selectedIndex].text === '' ? false : true;
        if (checkArr.name.check && checkArr.phone.check && checkArr.defect.check && checkArr.device.check) {
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
        checkArr.defect.check = defect[defect.selectedIndex].text === '' ? false : true;
        checkArr.device.check = device[device.selectedIndex].text === '' ? false : true;
        if (checkArr.name.check && checkArr.phone.check && checkArr.defect.check && checkArr.device.check) {
            this._changeColorByCheck(checkArr);
            return true;
        }
        this._changeColorByCheck(checkArr);

        return false;
    }

    _checkMaster(name, phone, defect, device) {
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
        checkArr.device.check = device[device.selectedIndex].text === '' ? false : true;
        if (checkArr.name.check && checkArr.phone.check && checkArr.defect.check && checkArr.device.check) {
            this._changeColorByCheck(checkArr);
            return true;
        }
        this._changeColorByCheck(checkArr);

        return false;
    }

    _checkReview(name, phone, rate, review) {
        let checkArr = {
            name: {
                check: false,
                el: name,
            },
            phone: {
                check: false,
                el: phone,
            },
            rate: {
                check: false,
                el: rate,
            },
            review: {
                check: false,
                el: review,
            },
        };
        checkArr.name.check = name.value === '' ? false : true;
        checkArr.phone.check = phone.value.length !== 16 ? false : true;
        checkArr.rate.check = rate.value === '' ? false : true;
        checkArr.review.check = review.value === '' ? false : true;
        if (checkArr.name.check && checkArr.phone.check && checkArr.rate.check && checkArr.review.check) {
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
                setTimeout(function () {
                    elemVal.el.classList.remove('input_err');
                }, transitionDelay);
            } else {
                elemVal.el.classList.remove('input_err');
            }
        }
    }
}
let mailing = new Mailing();

mailing.init();
