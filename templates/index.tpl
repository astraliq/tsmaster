<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&display=swap" rel="stylesheet">
    <title>{{ content.siteName|raw }}</title>
</head>

<body>
    <div class="top-line"></div>
    {% include 'header.tpl' %}
    <main class="main-style">
         <!-- modal window -->
         <div class="substrate1 screen_off">
            <div class="modal_cause screen_off">
                <div class="cross1">&#10006;</div>
                <input class="input client_name" type="text" placeholder="Ваше имя" maxlength="30">
                <input class="input client_phone" name="phone" type="tel" maxlength="16"
                placeholder="+7(___)___-__-__">
                <button class="button recall_btn" type="button">Вызвать мастера!</button>
            </div>
        </div>
        <section class="slider">
            <div class="container">
                <div id="points" class="slider__points slider__points_margin">
                    <a class="slider__point slider__point_active"></a>
                    <a class="slider__point"></a>
                    <a class="slider__point"></a>
                    <a class="slider__point"></a>
                    <a class="slider__point"></a>
                </div>
                <div class="slider__top slider__top_margin">
                    <!-- <div class="slider__item">
                        <img class="slider__img" src="img/top-slider/top-slider_01.jpg" alt="">
                    </div> -->
                    <div class="slider__item">
                        <div id="carousel" class="carousel">
                            <button class="arrow prev"><</button>
                            <div class="cause">
                                <div class="cause_btn">Вызвать мастера!</div>
                                <div class="cause_btn_block">&#10004;</div>
                            </div>
                            <div class="gallery">
                                <ul class="images">
                                    <li><img src="./img/top-slider/top-slider_01.jpg"></li>
                                    <li><img src="./img/top-slider/top-slider_02.jpg"></li>
                                    <li><img src="./img/top-slider/top-slider_03.jpg"></li>
                                    <li><img src="./img/top-slider/top-slider_04.jpg"></li>
                                    <li><img src="./img/top-slider/top-slider_05.jpg"></li>
                                </ul>
                            </div>
                            <button class="arrow next">></button>
                        </div>
                    </div>
                    <div class="slider__item">

                    </div>
                    <div class="slider__item">

                    </div>
                    <div class="slider__item">

                    </div>
                </div>
            </div>
        </section>
        <section class="advantage advantage_margin">
            <div class="container2">
                <div class="section__title section__title_black section__title_margin"><a name="advantage">наши преимущества</a></div>
                <div class="advantage__bullets">
                    <div class="advantage__bullets-left">
                        <div class="bullets__item bullets_margin">
                            <p class="bullets__text bullets__text_right">Работаем ежедневно</p>
                            <img class="bullets__img" src="img/advantage/advantage_01.png" alt="Работаем ежедневно">
                        </div>
                        <div class="bullets__item">
                            <p class="bullets__text bullets__text_right">бесплатный выезд</p>
                            <img class="bullets__img" src="img/advantage/advantage_02.png" alt="бесплатный выезд">
                        </div>
                    </div>
                    <img class="advantage__img" src="img/advantage/advantage-foto.jpg">
                    <div class="advantage__bullets-right">
                        <div class="bullets__item bullets_margin">
                            <img class="bullets__img" src="img/advantage/advantage_03.png" alt="бесплатная диагностика">
                            <p class="bullets__text bullets__text_left">бесплатная диагностика</p>

                        </div>
                        <div class="bullets__item">
                            <img class="bullets__img" src="img/advantage/advantage_04.png" alt="гарантия на наши услуги">
                            <p class="bullets__text bullets__text_left">гарантия на наши услуги</p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="form-plate form-plate_margin">
            <div class="container">
                <div class="form-plate__request">&nbsp;
                    <form class="form-plate__form" action="#">
                        <div class="section__title section__title_white">оставьте заявку</div>
                        <input class="input" type="text" placeholder="Ваше имя">
                        <input class="input" type="text" placeholder="Номер телефона">
                        <button class="button" type="button">Получить скидку!</button>
                    </form>
                </div>
            </div>
        </section>
        <section class="services-style">
            <div class="container2">
                <div class="section__title section__title_margin">
                    <a name="services">все услуги<br>наших мастеров</a>
                </div>
                <div class="services-items services-items_margin">
                    <div class="services-item">
                        <img class="services__img_margin" src="img/services/services_01.jpg" alt="Ремонт стиральных машин">
                        <button class="services__btn">Узнать подробнее</button>
                    </div>
                    <div class="services-item">
                        <img class="services__img_margin" src="img/services/services_02.jpg" alt="Ремонт посудомоечных машин">
                        <button class="services__btn">Узнать подробнее</button>
                    </div>
                    <div class="services-item">
                        <img class="services__img_margin" src="img/services/services_03.jpg" alt="Ремонт холодильников">
                        <button class="services__btn">Узнать подробнее</button>
                    </div>
                    <div class="services-item">
                        <img class="services__img_margin" src="img/services/services_04.jpg" alt="Ремонт духовых шкафов">
                        <button class="services__btn">Узнать подробнее</button>
                    </div>
                    <div class="services-item">
                        <img class="services__img_margin" src="img/services/services_05.jpg" alt="Ремонт варочных поверхностей">
                        <button class="services__btn">Узнать подробнее</button>
                    </div>
                </div>
            </div>
        </section>
        <section class="terms terms_margin">
            <div class="container2">
                <div class="section__title section__title_black section__title_margin"><a name="terms">условия обслуживания</a></div>
                <p class="section__text">
                    Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что
                    она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.</p>
                <p class="section__text">Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой,
                    случается, что она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.
                </p>
            </div>
        </section>
        <section class="form-search">
            <div class="container2">
                <div class="form-search__plate form-search_margin">
                    <div class="form-search__text">
                        <div class="section__title section__title_black"><a name="action">узнайте стоимость и<br>оформите заявку на ремонт</a></div>
                        <p class="form-search__subtitle form-search__subtitle_margin">Наш оператор перезвонит Вам через 2 минуты.</p>
                    </div>
                    <form class="form__items form-search_margin">
                        <div class="form__item">
                            <div class="before_1">
                                <select class="select input_margin" type="text">
                                    {% for technic,desc in content.jsonDb.defects %}
                                        <option class="form__option" value="">{{technic}}</option>
                                    {% endfor %}
                                </select>
                            </div>
                            <input class="input" type="text" placeholder="Ваше имя">
                        </div>
                        <div class="form__item">
                            <div class="before_2"><select class="select input_margin" type="text">
                                    <option class="form__option" value=""></option>
                                </select></div>
                            <input class="input" type="text" placeholder="Номер телефона">
                        </div>
                        <div class="form__item">
                            <div class="before_3">
                                <input class="input input_margin" type="text" placeholder="от ____________ рублей">
                            </div>
                            <button class="button">Отправить!</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Отзывы -->
        <section class="reviews">
            <div class="container2">
                <div class="section__title section__title_margin section__title_black"><a name="reviews">отзывы</a></div>
                <!-- <div class="reviews__slider">
                    <a class="reviews-arrow__link" href="#">
                        <div class="reviews__arrow">
                            <img class="reviews__arrow_img" src="img/reviews/reviews_left.png">
                        </div>
                    </a>
                    <div class="reviews__item">
                        <div class="reviews__item-name">Анастасия Миронова</div>
                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                    </div>
                    <div class="reviews__item">
                        <div class="reviews__item-name">Игорь Максимов</div>
                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                    </div>
                    <div class="reviews__item">
                        <div class="reviews__item-name">Матвей Буравин</div>
                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.</div>
                    </div>
                    <a class="reviews-arrow__link" href="#">
                        <div class="reviews__arrow">
                            <img class="reviews__arrow_img" src="img/reviews/reviews_right.png">
                        </div>
                    </a>
                </div> -->
                <div class="reviews__slider">
                    <div id="carousel_1" class="carousel_1">
                        <button class="arrow_1 prev_1"><img class="reviews__arrow_img" src="img/reviews/reviews_left.png"></button>
                        <div class="gallery_1">
                            <ul class="images_1">
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Анастасия Миронова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Игорь Максимов</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Матвей Буравин</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Анастасия Миронова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Игорь Максимов</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Матвей Буравин</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Анастасия Миронова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Игорь Максимов</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Матвей Буравин</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <button class="arrow_1 next_1"><img class="reviews__arrow_img" src="img/reviews/reviews_right.png"></button>
                    </div>
                </div>
                <div class="button__reviews_margin">
                    <button class="button-reviews">Оставить отзыв</button>
                </div>
                <!-- modal window -->
                <div class="substrate2 screen_off">
                    <div class="modal_rewiew screen_off">
                        <div class="cross2">&#10006;</div>
                    </div>
                </div>
        </section>
        <section class="form-question">
            <div class="container2">
                <div class="form-question__plate form-question__plate_margin">
                    <div class="section__title section__title_white">если у вас возникли вопросы,<br>то напишите нам и мы подскажем</div>
                    <div class="section__subtitle section__subtitle_white subtitle_margin">Наш оператор перезвонит Вам через 2 минуты.</div>
                    <form class="form-question__form">
                        <input class="input" type="text" placeholder="Ваше имя">
                        <input class="input input_margin-lr" type="text" placeholder="Номер телефона">
                        <button class="button">Перезвоните мне</button>
                    </form>
                </div>
            </div>
        </section>
        <section class="about about_margin">
            <div class="container2">
                <div class="section__title section__title_margin"><a name="about">о компании</a></div>
                <div class="about__text">
                    <p class="section__text">
                        Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что
                        она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.
                    </p>
                    <p class="section__text">
                        Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что
                        она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.
                    </p>
                </div>
            </div>
        </section>
    </main>
    {% include 'footer.tpl' %}  
    <script defer src="js/jquery-3.4.1.js"></script> 
    <script defer src="js/jquery.maskedinput.js"></script>
    <script defer src="js/modal.js"></script>
    <script defer src="js/script.js"></script>
</body>

</html>