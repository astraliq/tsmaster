'use strict'

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
point.forEach(element => {
    element.addEventListener('click', number => {
        let pointData = number.srcElement.dataset.point;
        position = -1 * width * pointData;//меняем позицию слайдера согласно точке
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
    point.forEach(elem => {
        elem.classList.remove('slider__point_active');
    });
    point[num].classList.add('slider__point_active');
};


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

};
//курусель отзывов малая
/*******************************************************************************/
let g = 1;
for (let li of carousel_2.querySelectorAll('li')) {
    li.style.position = 'relative';
    li.insertAdjacentHTML(
        'beforeend',
        '<span style="position:absolute;left:0;top:0">${i}</span>'
    );
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

    position_2 = Math.max(
        position_2,
        -width_2 * (listElems_2.length - count_2)
    );
    list_2.style.marginLeft = position_2 + 'px'; //обращение у стилю тэга ul

};

class Mailing {
    constructor() {
        this.name = 'antonio';
        this.phone = '123456789';
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

    sendMailRepairRequest() {
        let sendData = {
            apiMethod: 'sendMailRepairRequest',
            postData: {
                name: this.name,
                phone: this.phone,
                device: 'стиральная машина',
                defect: 'не сливает воду',
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
            });
    }

    sendMailPhoneRequest() {
        let sendData = {
            apiMethod: 'sendMailPhoneRequest',
            postData: {
                name: this.name,
                phone: this.phone,
            },
        };

        this._getJson(`/index.php`, sendData)
            .then((data) => {
                if (data.result === 'OK') {
                    console.log('mail send!');
                } else {
                    console.log('ERROR_SENDING');
                }
            })
            .catch((error) => {
                console.log('fetch error');
            });
    }
}
let mailing = new Mailing();
