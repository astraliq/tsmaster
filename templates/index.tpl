<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&family=Rubik:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/favicon.ico">
    <title>{{ content.siteName|raw }}</title>
</head>

<body>
    <div class="top-line"></div>
    {% include 'header.tpl' %}
    <main class="main-style">
        <!-- modal window -->
        {% include 'modal_substrate1.tpl' %} {% include 'confirm_mailing_block.tpl' %}
        <section class="slider">
            <div class="container">
                <!-- обманка -->
                <div id="carousel_2" class="carousel_2 screen_off">
                    <div class="prev_2 next_2"></div>
                </div>
                <!-- обманка -->
                <div id="points" class="slider__points slider__points_margin">
                    <a data-point="0" class="slider__point slider__point_active"></a>
                    <a data-point="1" class="slider__point"></a>
                    <a data-point="2" class="slider__point"></a>
                    <a data-point="3" class="slider__point"></a>
                    <a data-point="4" class="slider__point"></a>
                </div>
                <div class="slider__top slider__top_margin">
                    <!-- <div class="slider__item">
                        <img class="slider__img" src="img/top-slider/top-slider_01.jpg" alt="">
                    </div> -->
                    <div class="slider__item">
                        <div id="carousel" class="carousel">
                            <button class="arrow prev"><img class="reviews__arrow_img" src="img/reviews/reviews_left.png"></button>
                            <div class="cause">
                                <div class="btn-master cause_btn color_btn_2 {{ content.bg_class }}">Вызвать мастера!</div>
                                <div class="btn-master-block cause_btn_block color_btn_2">&#10004;</div>
                            </div>
                            <div class="gallery">
                                <ul class="images">
                                    <li><img src="./img/top-slider/banner_washing_machine.jpg"></li>
                                    <li><img src="./img/top-slider/banner_dishwasher.jpg"></li>
                                    <li><img src="./img/top-slider/banner_fridge.jpg"></li>
                                    <li><img src="./img/top-slider/banner_oven.jpg"></li>
                                    <li><img src="./img/top-slider/banner_cooking_surface.jpg"></li>
                                </ul>
                            </div>
                            <button class="arrow next"><img class="reviews__arrow_img" src="img/reviews/reviews_right.png"></button>
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
        <section class="advantage advantage_margin" id="advantage">
            <div class="container2">
                <div class="section__title section__title_black section__title_margin"><a name="advantage">надежно и выгодно</a></div>
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
                    <div class="advantage__bullets-discount hide" style="opacity: 0; z-index: 5; height: 350px; width: 450px; left: 30%;"></div>
                    <div class="advantage__bullets-discount">
                        <p class="advantage__bullets-discount_title">ремонт со скидкой</p>
                        <span class="advantage__bullets-discount_number">{{content.jsonDb.skidka.размер}}</span>
                        <p class="advantage__bullets-discount_duration">{{content.jsonDb.skidka.до}}</p>
                    </div>
                    <img class="advantage__img" src="img/banners/banner-skidka.jpg" width="424" height="341">
                    <div class="advantage__bullets-right">
                        <div class="bullets__item bullets_margin">
                            <img class="bullets__img" src="img/advantage/advantage_03.png" alt="бесплатная диагностика">
                            <p class="bullets__text bullets__text_left">бесплатная диагностика<sup>*</sup></p>

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
                        <div class="section__title section__title_white form-plate__title">оставьте заявку</div>
                        <input class="input input_margin client_name" type="text" placeholder="Ваше имя" maxlength="30">
                        <input class="input input_margin client_phone" type="text" name="phone" maxlength="16" placeholder="Номер телефона">
                        <button class="button button-phone section__title_margin" type="button">Получить скидку!</button>
                    </form>
                </div>
            </div>
        </section>
        <section class="services-style" id="services">
            <div class="container2">
                <div class="section__title section__title_margin">
                    <a name="services">все услуги<br>наших мастеров</a>
                </div>
                <div class="services-items services-items_margin">
                    {% for data in content.serviceItems %}
                    <div class="services-item">
                        <img class="services__img_margin" src="{{data.img}}" alt="">
                        <a class="services__btn" href="{{data.link}}">Узнать подробнее</a>
                    </div>
                    {% endfor %}
                </div>
            </div>
        </section>
        <section class="terms terms_margin" id="terms">
            <div class="container2">
                <div class="section__title section__title_black section__title_margin"><a name="terms">условия обслуживания</a></div>
                <p class="section__text">
                    Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что
                    она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.</p>
                <p class="section__text"><sup>*</sup>В случае принятии решения о продолжении работ, за диагностику Вы не оплачиваете.

                </p>
            </div>
        </section>
        {% include 'repair_form.tpl' %}
        <!-- Отзывы -->
        <section class="reviews" id="reviews">
            <div class="container2">
                <div class="section__title section__title_margin section__title_black"><a name="reviews">отзывы</a></div>
                <div class="reviews__slider">
                    <div id="carousel_1" class="carousel_1">
                        <button class="arrow_1 prev_1"><img class="reviews__arrow_img" src="img/reviews/reviews_left.png"></button>
                        <div class="gallery_1">
                            <ul class="images_1">
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Маргарита Савельева</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Машинка работает, мастер быстро и аккуратно всё сделал, очень довольна работой!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Екатерина Плотникова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">В другом сервисе сказали, что работы на 4 часа. Ваш мастер сделал всё гораздо быстрее, при этом качественно и адекватно. Спасибо, мы довольны.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Мария Буравина</div>
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
                                        <div class="reviews__item-name">Юлий З.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Сломалась стиральная машинка Beko. Новая стоит от 12000 рублей, поэтому сперва решил вызвать ремонтников. Приехал мужчина в годах, посмотрел машинку, сказал, что сломалась регулирующая панелька и ее нужно заменить, озвучил цену в 2000 рублей с чем я согласился. Уехал за деталью и через час вернулся, заменил панельку. Сейчас машинка работает без нареканий. Спасибо.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Алена Ш.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Обращалась в данную организацию по ремонту холодильника. Морозилка перестала морозить. Вежливо и быстро приняли заказ. Починили в этот же день. Хороший сервисный центр, рекомендую обращаться сюда. Тем более,что специализируются еще по стиральным и посудомоечным машинкам, и вроде еще по варкам и духовкам.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Арина П.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Стали замечать протечки в стиральной машине, незамедлительно по этому поводу стали искать сервисный центр и нашли вас. Мастера вызывали на дом. В тот же день как мы оставили заявку он приехал со всем оборудованием и произвёл ремонт. Ушло на всё это дело часа полтора у него, результатом очень даже довольны, протечки устранены, теперь наконец всё нормально. Спасибо!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews__item">
                                        <div class="reviews__item-name">Евгений М.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Порекомендовали данный сервисный центр соседи, которые тоже недавно столкнулись с поломкой стиральной машинки. Обратился и я сюда, о чем не пожалел ни разу. Быстро качественно недорого - то что нужно всем. Теперь и их рекомендую всем! Молодцы, ребята ! Процветания вашему бизнесу!</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <button class="arrow_1 next_1"><img class="reviews__arrow_img" src="img/reviews/reviews_right.png"></button>
                    </div>
                </div>
                <div class="button__reviews_margin">
                    <button class="btn-review">Оставить отзыв</button>
                </div>
                <!-- modal window оставить отзыв-->
                <div class="darkback darkback-review screen_off modal_off">
                    <div class="modal-window modal-review screen_off">
                        <div class="close-review">&#10006;</div>
                        <div class="modal-content" id="review">
                            <div class="section__title section__title_black section__title_margin">Оставить отзыв</div>
                            <input class="input input_margin client_name" type="text" placeholder="Ваше имя и фамилия" maxlength="30">
                            <input class="input input_margin client_phone" type="text" name="phone" maxlength="16" placeholder="Номер телефона">
                            <input class="input input_margin rate" type="number" placeholder="Ваша оценка (от 1 до 5)" min="1" max="5">
                            <textarea class="text-block input_margin review" rows="10" cols="29" placeholder="Ваш отзыв"></textarea>
                            <button class="button button-review section__title_margin" type="button">Отправить</button>
                            <div class="modal-text modal-text_margin">
                                <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                                <a class="modal-link" href="#">политикой конфиденциальности и обработки персональных данных</a>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        {% include 'question_form.tpl' %}
        {% include 'about.tpl' %}
    </main>
    {% include 'footer.tpl' %}
    <script defer src="js/jquery-3.4.1.js"></script>
    <script defer src="js/jquery.maskedinput.js"></script>
    <script defer src="js/script.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
    <script defer src="js/city.js"></script>
    <script>
        jQuery(document).ready(function() {
            jQuery("a.scroll_to").click(function() {
                elementClick = jQuery(this).attr("href")
                destination = jQuery(elementClick).offset().top;
                jQuery("html:not(:animated),body:not(:animated)").animate({
                    scrollTop: destination
                }, 1100);
                return false;
            });
        });
    </script>

</body>

</html>