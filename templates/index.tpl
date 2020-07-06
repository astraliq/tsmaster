<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/main.css" />
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&family=Rubik:wght@300;400;700&display=swap" rel="stylesheet" />
        <link rel="shortcut icon" href="/favicon.ico" />
        <title>{{ content.siteName | raw }}</title>
        <style class="data_width" data-width="3"></style>
    </head>

    <body>
        <div class="top-line">
            <div class="top-line-text">
                Внимание! Для противодействия коронавирусной инфекции мы ввели ежедневную проверку всех наших сотрудников и обеспечиваем их медицинскими масками и антисептиком.
                Работаем без выходных, в том числе во время ограничений.
            </div>
        </div>
        {% include 'header.tpl' %}
        <main class="main-style">
            <!-- modal window -->
            {% include 'modal_substrate1.tpl' %} {% include 'confirm_mailing_block.tpl' %}
            <!-- баннер 1 -->
            {% include 'banner_1.tpl' %}
            <!-- баннер 2 -->
            {% include 'banner_2.tpl' %}
            <!-- баннер 3 -->
            {% include 'banner_3.tpl' %}
            <!-- баннер 4 -->
            {% include 'banner_4.tpl' %}
            <section class="slider" id="main_slider">
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
                                <button class="arrow prev color_btn_1"><img class="reviews__arrow_img" src="img/reviews/reviews_left.png" alt="left" /></button>
                                <div class="cause">
                                    <div class="btn-master cause_btn color_btn_2 {{ content.bg_class }}">Вызвать мастера!</div>
                                    <!--<div class="btn-master-block cause_btn_block color_btn_2">&#10004;</div>-->
                                </div>
                                <div class="gallery">
                                    <ul class="images">
                                        <li><img src="./img/top-slider/banner_washing_machine.jpg" alt="banner_washing_machine" /></li>
                                        <li><img src="./img/top-slider/banner_dishwasher.jpg" alt="banner_dishwasher" /></li>
                                        <li><img src="./img/top-slider/banner_fridge.jpg" alt="banner_fridge" /></li>
                                        <li><img src="./img/top-slider/banner_oven.jpg" alt="banner_oven" /></li>
                                        <li><img src="./img/top-slider/banner_cooking_surface.jpg" alt="banner_cooking_surface" /></li>
                                    </ul>
                                </div>
                                <button class="arrow next color_btn_1">
                                    <img class="reviews__arrow_img" src="img/reviews/reviews_right.png" alt="right" />
                                </button>
                            </div>
                        </div>
                        <div class="slider__item"></div>
                        <div class="slider__item"></div>
                        <div class="slider__item"></div>
                    </div>
                </div>
            </section>
            <div id="changedBlocks" style="height: 0;"></div>
            <section class="advantage advantage_margin" id="advantage">
                <div class="container2">
                    <div class="section__title section__title_black section__title_margin"><a name="advantage">надежно и выгодно</a></div>
                    <div class="advantage__bullets">
                        <div class="advantage__bullets-left">
                            <div class="bullets__item bullets_margin">
                                <p class="bullets__text bullets__text_right">Работаем ежедневно</p>
                                <img class="bullets__img" src="img/advantage/advantage_01.png" alt="Работаем ежедневно" />
                            </div>
                            <div class="bullets__item">
                                <p class="bullets__text bullets__text_right">бесплатный выезд</p>
                                <img class="bullets__img" src="img/advantage/advantage_02.png" alt="бесплатный выезд" />
                            </div>
                        </div>
                        <div class="advantage__bullets-discount hide" style="opacity: 0; z-index: 5; height: 350px; width: 450px; left: 30%;"></div>
                        <div class="advantage__bullets-discount">
                            <p class="advantage__bullets-discount_title">ремонт со скидкой</p>
                            <span class="advantage__bullets-discount_number">{{content.jsonDb.skidka.размер}}</span>
                            <p class="advantage__bullets-discount_duration {{ content.actionMonthCSS }}">
                                {{content.jsonDb.skidka.до}} {{ content.actionMonth }}!
                            </p>
                        </div>
                        <img class="advantage__img" src="img/banners/banner-skidka.jpg" width="424" height="341" alt="skidka.jpg" />
                        <div class="advantage__bullets-right">
                            <div class="bullets__item bullets_margin">
                                <img class="bullets__img" src="img/advantage/advantage_03.png" alt="бесплатная диагностика" />
                                <p class="bullets__text bullets__text_left">бесплатная диагностика<sup>*</sup></p>
                            </div>
                            <div class="bullets__item">
                                <img class="bullets__img" src="img/advantage/advantage_04.png" alt="гарантия на наши услуги" />
                                <p class="bullets__text bullets__text_left">гарантия на наши услуги</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Цены -->
            {% include 'defect_table_all.tpl' %}
            <!-- Отзывы -->
            {% include 'reviews_slider.tpl' %}
            <!-- О компании -->
            {% include 'about.tpl' %}
            <!-- Контакты -->
            {% include 'contacts.tpl' %}
            <section class="form-plate form-plate_margin">
                <div class="container">
                    <div class="form-plate__request">
                        &nbsp;
                        <form class="form-plate__form" action="#">
                            <div class="section__title section__title_white form-plate__title">оставьте заявку</div>
                            <input class="input input_margin client_name" type="text" placeholder="Ваше имя" maxlength="30" />
                            <input class="input input_margin client_phone" type="text" name="phone" maxlength="16" placeholder="Номер телефона" />
                            <button class="button button-phone section__title_margin color_btn_2" type="button">Получить скидку!</button>
                        </form>
                    </div>
                </div>
            </section>
            <section class="services-style" id="services">
                <div class="container2">
                    <div class="section__title section__title_margin">
                        <a name="services">все услуги<br />наших мастеров</a>
                    </div>
                    <div class="services-items services-items_margin">
                        {% for menu,data in content.serviceItems %}
                        <div class="services-item">
                            <img class="services__img_margin" src="{{ data.img }}" alt="{{ menu }}" title="{{ menu }}" />
                            <a class="services__btn color_btn_1" href="{{ data.link }}">Ремонт<br />{{menu|slice(7,100)}}</a>
                        </div>
                        {% endfor %}
                    </div>
                </div>
            </section>
            <section class="terms terms_margin" id="terms">
                <div class="container2">
                    <div class="section__title section__title_black section__title_margin"><a name="terms">условия обслуживания</a></div>
                    <p class="section__text">
                        Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы
                        вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что она выходит из
                        строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к
                        специалистам.
                    </p>
                    <p class="section__text"><sup>*</sup>В случае принятии решения о продолжении работ, за диагностику Вы не оплачиваете.</p>
                </div>
            </section>
            {% include 'repair_form.tpl' %} {% include 'question_form.tpl' %}
        </main>
        {% include 'footer.tpl' %}
        <script defer src="js/jquery-3.4.1.js"></script>
        <script defer src="js/jquery.maskedinput.js"></script>
        <script defer src="js/script.js"></script>
        <script defer src="js/menu_1.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script defer src="js/city.js"></script>
        <script>
            jQuery(document).ready(function () {
                jQuery('a.scroll_to').click(function () {
                    elementClick = jQuery(this).attr('href');
                    destination = jQuery(elementClick).offset().top;
                    jQuery('html:not(:animated),body:not(:animated)').animate(
                        {
                            scrollTop: destination,
                        },
                        1100
                    );
                    window.location.hash = elementClick;
                    return false;
                });
            });
        </script>
    </body>
</html>
