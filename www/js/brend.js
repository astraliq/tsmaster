'use strict';

//карусель брендов
let k = 1;
for (let li of carousel_br.querySelectorAll('li')) {
    li.style.position = 'relative';
    li.insertAdjacentHTML('beforeend', '<span style="position:absolute;left:0;top:0">${i}</span>'
    );
    k++;
};

//конфигурация
let width_br = 349; //ширина картинки 
let count_br = 3; //сдиг на количество картинок
let numberImg_br = 9; //количество картинок


let list_br = carousel_br.querySelector('ul');
let listElems_br = carousel_br.querySelectorAll('li');

let position_br = 0; //положение прокрутки

//в левую сторону
carousel_br.querySelector('.prev_br').onclick = function () {
    position_br += width_br * count_br;

    position_br = Math.min(position_br, 0);
    list_br.style.marginLeft = position_br + 'px'; //обращение у стилю тэга ul
    console.log(position_br);
};
//в правую сторону
carousel_br.querySelector('.next_br').onclick = function () {
    position_br -= width_br * count_br;

    position_br = Math.max(position_br, -width_br * (listElems_br.length - count_br));
    list_br.style.marginLeft = position_br + 'px'; //обращение у стилю тэга ul
    console.log(position_br);
};