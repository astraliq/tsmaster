'use strict';

//вызов модальных окон

let telephone = document.querySelector('.tel__btn'); //кнопка - заказать звонок
let sub_wind = document.querySelector('.substrate'); // окно - заказать звонок, подложка
let windPhone = document.querySelector('.modal_phone'); // окно - заказать звонок
let crossBtn = document.querySelector('.cross');

let call = document.querySelector('.cause'); // кнопка - вызвать мастера
let sub_wind1 = document.querySelector('.substrate1');
let windCause = document.querySelector('.modal_cause');
let crossBtn1 = document.querySelector('.cross1');

let reviewBtn = document.querySelector('.button-reviews'); // кнопка - оставить отзыв
let sub_wind2 = document.querySelector('.substrate2');
let crossBtn2 = document.querySelector('.cross2');
let windReview = document.querySelector('.modal_rewiew');

//вызов - заказать звонок
showModal(telephone, windPhone, sub_wind, crossBtn);

//вызов - вызов мастера
showModal(call, windCause, sub_wind1, crossBtn1);

//вызов - оставить отзыв
showModal(reviewBtn, windReview, sub_wind2, crossBtn2);

/**
 * Функция вызова модальных окон
 * данные по порядку
 * @param {any} callBtn Кнопка вызова модального окна.
 * @param {any} windModal Модальное окно.
 * @param {any} shadowWindow Затенение экрана.
 * @param {any} crossBtn Крестик для закрытия окна.
 */
function showModal(callBtn, windModal, shadowWindow, crossBtn) {
    callBtn.addEventListener('click', () => {
        shadowWindow.classList.remove('screen_off');
        setTimeout(function () {
            shadowWindow.classList.remove('modal_off');
        }, 10);
    });
    crossBtn.addEventListener('click', () => {
        shadowWindow.classList.add('modal_off');
        setTimeout(function () {
            shadowWindow.classList.add('screen_off'); // скрываем его
        }, 500);
    });

    //закрытие окна при клике вне окна
    document.addEventListener('mouseup', (e) => {
        // событие клика по веб-документу
        if (
            windModal != e.target &&
            e.target.parentNode != windModal &&
            !shadowWindow.classList.contains('screen_off')
        ) {
            // если клик был не по нашему блоку и не по его дочерним элементам
            shadowWindow.classList.add('modal_off');
            setTimeout(function () {
                shadowWindow.classList.add('screen_off'); // скрываем его
            }, 500);
        }
    });
}
