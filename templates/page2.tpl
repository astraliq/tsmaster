<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&display=swap" rel="stylesheet">
    <title>{{ content.siteName|raw }}</title>
</head>

<body>
    <div class="top-line"></div>
    {% include 'header.tpl' %}
    <div class="container">
        <main class="main-blocks">
            <section class="left-part">
            {% include 'service_menu2.tpl' %}                           
                <div class="action action_margin">
                    <form class="action-form" action="#">
                        <input class="input input_margin-8" type="text" placeholder="Ваше имя">
                        <input class="input input_margin-20" type="text" placeholder="Номер телефона">
                        <button class="button button_margin">Получить скидку</button>
                    </form>
                </div>
                <div class="reviews-part">
                    <div class="reviews-part__top reviews-part__top_margin">
                        <button class="arrow_part prev_1"><img class="reviews__arrow_img" src="../img/reviews/reviews_left.png"></button>
                        <div class="section-part__title">отзывы</div>
                        <button class="arrow_part next_1"><img class="reviews__arrow_img" src="../img/reviews/reviews_right.png"></button>
                    </div>
                    <div id="carousel_1 " class="carousel_1">
                        <div class="gallery_1-part">
                            <ul class="images_1">
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Анастасия Миронова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Игорь Максимов</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Матвей Буравин</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Анастасия Миронова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Игорь Максимов</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Матвей Буравин</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Анастасия Миронова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Хочу всем порекомендовать данный сервис! Машинка стиральная снова в рабочем состоянии, специалисты не опаздывают и чинят все за небольшое количество времени. Так же очень вежливые и хорошо знают свое дело!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Игорь Максимов</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Никогда не оставлял отзывы. Но решил, что уж очень хочется, чтоб другие тоже знали. Бесплатный выезд мастера и проделанная работа за 30 минут говорят сами за себя!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Матвей Буравин</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <section class="right-part">
                <div class="container3">
                    <div class="main-style">
                        <section class="top-banner_margin">
                            <img class="top-banner__img" src="../img/top-banner/top-banner.jpg" width="100%" height="auto" alt="Ремонт стиральных машин">
                        </section>
                        <section class="advantage advantage_margin">
                            <div class="container3">
                                <div class="section__title section__title_black section__title_margin">Почему нам доверяют</div>
                                <div class="advantage__bullets">
                                    <div class="advantage__bullets-left">
                                        <div class="bullets__item bullets_margin">
                                            <p class="bullets__text bullets__text_right bullets__text-part">Работаем ежедневно</p>
                                            <img class="bullets__img" src="../img/advantage/advantage_01.png" alt="Работаем ежедневно" width="100" height="100">
                                        </div>
                                        <div class="bullets__item">
                                            <p class="bullets__text bullets__text_right bullets__text-part">бесплатный выезд</p>
                                            <img class="bullets__img" src="../img/advantage/advantage_02.png" alt="бесплатный выезд" width="100" height="100">
                                        </div>
                                    </div>
                                    <img class="advantage__img" src="../img/advantage/advantage-foto.jpg" width="400" height="auto" alt="Наши примущества">
                                    <div class="advantage__bullets-right">
                                        <div class="bullets__item bullets_margin">
                                            <img class="bullets__img" src="../img/advantage/advantage_03.png" alt="бесплатная диагностика" width="100" height="100">
                                            <p class="bullets__text bullets__text_left bullets__text-part">бесплатная диагностика</p>

                                        </div>
                                        <div class="bullets__item">
                                            <img class="bullets__img" src="../img/advantage/advantage_04.png" alt="гарантия на наши услуги" width="100" height="100">
                                            <p class="bullets__text bullets__text_left bullets__text-part">гарантия на наши услуги</p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="cost-table">
                            {% if content.defectTable == 1 %}           
                                {% include 'defect_table1.tpl' %}
                            {% elseif content.defectTable == 2 %}                      
                                {% include 'defect_table2.tpl' %}           
                            {% endif %} 
                        </section>
                        <section class="form-search">
                            <div class="container3">
                                <div class="form-search__plate form-search_margin">
                                    <div class="form-search__text ">
                                        <div class="section__title section__title_black">узнайте стоимость и<br>оформите заявку на ремонт</div>
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
                                            <div class="before_2">
                                                <select class="select input_margin" type="text">
                                                    <option class="form__option" value=""></option>
                                                </select>
                                            </div>
                                            <input class="input" type="text" placeholder="Номер телефона">
                                        </div>
                                        <div class="form__item">
                                            <div class="before_3">
                                                <input class="input input_margin" type="text" placeholder="от ____________ рублей ">
                                            </div>
                                            <button class="button">Отправить!</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                        <section class="brand brand_margin">
                            <div class="container3">
                                <div class="section__title section__title_black section__title_margin">ремонт любых брендов</div>
                                <div class="brand-items">
                                    <div class="brand-arrow">
                                        <button class="brand-btn"><</button>
                                    </div>
                                    <div class="brand-item">
                                        <img class="brand-item__img" src="../img/brands/bosch.jpg" alt="Bosch">
                                    </div>
                                    <div class="brand-item">
                                        <img class="brand-item__img" src="../img/brands/indesit.jpg" alt="Indesit">
                                    </div>
                                    <div class="brand-item">
                                        <img class="brand-item__img" src="../img/brands/electrolux.jpg" alt="Electrolux">
                                    </div>
                                    <div class="brand-arrow">
                                        <button class="brand-btn">></button>
                                    </div>

                                </div>
                            </div>
                        </section>
                        <section class="services-style">
                            <div class="container3">
                                <div class="section__title section__title_margin">
                                    другие услуги<br>наших мастеров
                                </div>
                                <div class="services-items services-items_margin">
                                    <div class="invisible">
                                        <img class="services__img_margin" src="../img/services/services_01.jpg" alt="Ремонт стиральных машин">
                                        <button class="services__btn">Узнать подробнее</button>
                                    </div>
                                    <div class="services-item">
                                        <img class="services__img_margin" src="../img/services/services_02.jpg" alt="Ремонт посудомоечных машин ">
                                        <button class="services__btn">Узнать подробнее</button>
                                    </div>
                                    <div class="services-item">
                                        <img class="services__img_margin" src="../img/services/services_03.jpg" alt="Ремонт холодильников">
                                        <button class="services__btn">Узнать подробнее</button>
                                    </div>
                                    <div class="services-item">
                                        <img class="services__img_margin" src="../img/services/services_04.jpg" alt="Ремонт духовых шкафов ">
                                        <button class="services__btn">Узнать подробнее</button>
                                    </div>
                                    <div class="services-item">
                                        <img class="services__img_margin" src="../img/services/services_05.jpg" alt="Ремонт варочных поверхностей">
                                        <button class="services__btn">Узнать подробнее</button>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="terms terms_margin">
                            <div class="container3">
                                <div class="section__title section__title_black section__title_margin">условия обслуживания</div>
                                <p class="section__text">
                                    Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что
                                    она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.</p>
                                <p class="section__text">Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе
                                    за техникой, случается, что она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.
                                </p>
                            </div>
                        </section>
                        <section class="form-question form-question_margin">
                            <div class="container3">
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
                        <!-- <section class="about about_margin">
                            <div class="container3">
                                <div class="section__title section__title_margin">о компании</div>
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
                        </section> -->
                    </div>
            </section>
            </div>
            </section>
        </main>
    </div>
    {% include 'footer.tpl' %}   
    <script defer src="js/jquery-3.4.1.js"></script> 
    <script defer src="js/jquery.maskedinput.js"></script>
    <script defer src="js/modal.js"></script>
    <script defer src="js/script.js"></script>
</body>

</html>