<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&family=Rubik:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/favicon.ico">
    <title>{{ content.siteName|raw }}</title>
    <style class="data_width" data-width="2">
        .carousel_1{
            width: 80%;
            margin: 0 auto;
        }
    </style>
</head>

<body>
    <div class="top-line">
        <div class="top-line-text">
            Внимание! Для противодействия коронавирусной инфекции мы ввели ежедневную проверку всех наших сотрудников и обеспечиваем их медицинскими масками и антисептиком.
            Работаем без выходных, в том числе во время ограничений.
        </div>
    </div>
    {% include 'header.tpl' %}
    <div class="container">
        <main class="main-blocks">
            <!-- modal window -->
            {% include 'modal_substrate1.tpl' %}
            {% include 'confirm_mailing_block.tpl' %}
            <section class="left-part">
                {% include 'service_menu2.tpl' %}
                <div class="action action_margin">
                    <div class="advantage__bullets-discount2">
                        <p class="advantage__bullets-discount2_title">{{content.jsonDb.skidka2.title}}</p>
                        <span class="advantage__bullets-discount2_number">{{content.jsonDb.skidka2.number}}</span>
                        <p class="advantage__bullets-discount2_duration {{ content.actionMonthCSS }}">{{content.jsonDb.skidka2.duration}} {{ content.actionMonth }}!</p>
                    </div>
                    <div class="advantage__bullets-discount2 hide" style="opacity: 0; z-index: 5; height: 120px; width: 250px; left: 5%;"></div>
                    <form class="action-form" action="#">
                        <input class="input input_margin-8 client_name screen_off" type="text" placeholder="Ваше имя" maxlength="30" value="noname">
                        <input class="input input_margin-20 client_phone" type="text" name="phone" maxlength="16" placeholder="Номер телефона">
                        <button class="button button-phone button_margin color_btn_1" type="button">Получить скидку</button>
                    </form>
                </div>
                <div class="reviews-part" id="reviews_small">
                    <div class="reviews-part__top reviews-part__top_margin">
                        <!--<button class="arrow_part prev_1"><img class="reviews__arrow_img" src="../img/reviews/reviews_left.png"></button>-->
                        <div class="section-part__title">отзывы</div>
                        <!--<button class="arrow_part next_1"><img class="reviews__arrow_img" src="../img/reviews/reviews_right.png"></button>-->
                    </div>
                    <!-- карусель малая -->
                    <div id="carousel_2" class="carousel_2">
                        <button class="arrow_2 prev_2 color_btn_1"><img class="reviews__arrow_img" src="img/reviews/reviews_left.png" alt="left"></button>
                        <div class="gallery_2">
                            <a name="reviews"></a>
                            <ul class="images_2">
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
                                        <div class="reviews__item-name">Мария Буравина</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Очень довольна качеством ремонта. До вас вызывала мастера из другой фирмы — не приехал. А вы откликнулись на мою просьбу помочь с ремонтом посудомоечной машинки в течение 10 минут. Мастер подъехал через час.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Маргарита Савельева</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Машинка работает, мастер быстро и аккуратно всё сделал, очень довольна работой!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Екатерина Плотникова</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">В другом сервисе сказали, что работы на 4 часа. Ваш мастер сделал всё гораздо быстрее, при этом качественно и адекватно. Спасибо, мы довольны.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Юлий З.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Сломалась стиральная машинка Beko. Новая стоит от 12000 рублей, поэтому сперва решил вызвать ремонтников. Приехал мужчина в годах, посмотрел машинку, сказал, что сломалась регулирующая панелька и ее нужно заменить, озвучил цену в 2000 рублей с чем я согласился. Уехал за деталью и через час вернулся, заменил панельку. Сейчас машинка работает без нареканий. Спасибо.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Алена Ш.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Обращалась в данную организацию по ремонту холодильника. Морозилка перестала морозить. Вежливо и быстро приняли заказ. Починили в этот же день. Хороший сервисный центр, рекомендую обращаться сюда. Тем более,что специализируются еще по стиральным и посудомоечным машинкам, и вроде еще по варкам и духовкам.</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Арина П.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Стали замечать протечки в стиральной машине, незамедлительно по этому поводу стали искать сервисный центр и нашли вас. Мастера вызывали на дом. В тот же день как мы оставили заявку он приехал со всем оборудованием и произвёл ремонт. Ушло на всё это дело часа полтора у него, результатом очень даже довольны, протечки устранены, теперь наконец всё нормально. Спасибо!</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="reviews-part__item">
                                        <div class="reviews__item-name">Евгений М.</div>
                                        <div class="reviews__item-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                                        <div class="reviews__item-text">Порекомендовали данный сервисный центр соседи, которые тоже недавно столкнулись с поломкой стиральной машинки. Обратился и я сюда, о чем не пожалел ни разу. Быстро качественно недорого - то что нужно всем. Теперь и их рекомендую всем! Молодцы, ребята ! Процветания вашему бизнесу!</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <button class="arrow_2 next_2 color_btn_1"><img class="reviews__arrow_img" src="img/reviews/reviews_right.png" alt="right"></button>
                    </div>
                </div> 
                <div class="advantage_bullets_small" id="advantage_bullets_small" style="display: none;">
                    <div class="advantage__bullets-right">
                        <div class="bullets__item bullets_margin" data-type="banner1">
                            <img class="bullets__img" src="../img/advantage/advantage_01.png" alt="Работаем ежедневно" width="90" height="90">
                            <p class="bullets__text bullets__text_left bullets__text-part">Работаем ежедневно</p>
                        </div>
                        <div class="bullets__item bullets_margin" data-type="banner2">
                            <img class="bullets__img" src="../img/advantage/advantage_02.png" alt="бесплатный выезд" width="90" height="90">
                            <p class="bullets__text bullets__text_left bullets__text-part">бесплатный выезд</p>
                        </div>
                        <div class="bullets__item bullets_margin" data-type="banner3">
                            <img class="bullets__img" src="../img/advantage/advantage_03.png" alt="бесплатная диагностика" width="90" height="90">
                            <p class="bullets__text bullets__text_left bullets__text-part">бесплатная диагностика</p>
                        </div>
                        <div class="bullets__item" data-type="banner4">
                            <img class="bullets__img" src="../img/advantage/advantage_04.png" alt="гарантия на наши услуги" width="90" height="90">
                            <p class="bullets__text bullets__text_left bullets__text-part">гарантия на наши услуги</p>
                        </div>
                    </div>
                </div>   
            </section>
            <section class="right-part">
                <div class="container3">
                    <div class="main-style">
                        <!-- баннер 1 -->
                        {% include 'banner_1.tpl' %}
                        <!-- баннер 2 -->
                        {% include 'banner_2.tpl' %}
                        <!-- баннер 3 -->
                        {% include 'banner_3.tpl' %}
                        <!-- баннер 4 -->
                        {% include 'banner_4.tpl' %}
                        <section class="top-banner_margin" id="top_banner">
                            {% if content.isBrand != 1 and content.defectTableId == 1 %} 
                             <!--заголовок 2 страницы  -->
                            <div class="banner_title_block-1">       
                                <h2 class="banner_title-h2-1 {{content.hStyle}}"><span>ремонт</span>{{content.pageTitle|slice(7,100)}}</h2>
                            </div>
                            <div class="banner_title_block-1" style="opacity: 0"></div>
                            {% elseif content.isBrand == 1 and content.defectTableId == 1 %}
                            <!--заголовок 2 страницы с брендом  -->
                            <div class="banner_title_block-1">   
                                <h2 class="banner_title-h2-3 {{content.TitleLetterSpacing}}"><span>ремонт</span>{{content.pageTitle|slice(7,100)}}<span>{{content.brand}}</span></h2>
                            </div>
                            <div class="banner_title_block-2" style="opacity: 0"></div>
                            {% elseif content.isBrand == 1 and content.defectTableId == 2 %}
                            <!--заголовок 3 страницы с брендом  -->
                            <div class="banner_title_block-2">   
                                <h2 class="banner_title-h2-4 {{content.TitleLetterSpacing}}"><span class="{{content.hStyle}}">{{content.pageTitle3}} {{content.brand}}</span> {{content.pageTitle}}?</h2>
                            </div>
                            <div class="banner_title_block-2" style="opacity: 0"></div>
                            {% else %}
                            <!--заголовок 3 страницы  -->
                            <div class="banner_title_block-2">   
                                <h2 class="banner_title-h2-2 {{content.TitleLetterSpacing}}"><span class="{{content.hStyle}}">{{content.pageTitle3}}</span><span>{{content.brand}}</span> {{content.pageTitle}}?</h2>
                            </div>
                            <div class="banner_title_block-2" style="opacity: 0"></div>
                            {% endif %} 
                            
                            <img class="top-banner__img" src="{{content.banner}}" alt="{{content.pageTitle}}" title="{{content.pageTitle}}">
                            <div class="cause">
                                <div class="btn-master cause_btn color_btn_1 {{ content.bg_class }}">Вызвать мастера!</div>
                                <!--<div class="btn-master-block cause_btn_block color_btn_1 {{ content.bg_class }}">&#10004;</div>-->
                            </div>
                        </section>
                        <div id="changedBlocks" style="height: 0;"></div>
                        <!-- почему нам доверяют блок -->
                       
                        <!-- перенос блоков от сюда -->
                        
                        <!-- Цены -->
                        <section class="cost-table">
                            {% if content.defectTableId == 1 %}           
                                {% include 'defect_table_all.tpl' %}
                                {% include 'defect_table1.tpl' %}

                            {% elseif content.defectTableId == 2 %} 
                                {% include 'defect_table_all.tpl' %}                     
                                {% include 'defect_table2.tpl' %}           
                            {% endif %} 
                        </section>
                        <!-- перенос блоков сюда-->
                        <!-- О компании -->
                        {% include 'about.tpl' %}
                        <!-- Отзывы -->
                        {% include 'reviews_slider.tpl' %}
                        <!-- Контакты -->
                        {% include 'contacts.tpl' %}

                        <!-- advantage -->
                        <section class="advantage advantage_margin"  id="advantage">
                            <div class="container4">
                                <div class="section__title section__title_black section__title_margin section__title_padding">
                                    {% if content.defectTableId == 2 and content.cityId == 0 %} 
                                    <!-- екатеринбург --> 
                                    <a name="advantage"></a>выезд&nbsp;в&nbsp;любой&nbsp;район&nbsp;города екатеринбурга, арамиль, березовский, в.&nbsp;пышму</div>
                                    {% elseif content.defectTableId == 2 and content.cityId == 1 %} 
                                    <!-- челябинск -->
                                    <a name="advantage"></a>выезд в любой район города челябинска</div>
                                    {% elseif content.defectTableId == 2 and content.cityId == 2 %} 
                                    <!-- тюмень -->
                                    <a name="advantage"></a>выезд в любой район города тюмени</div>
                                    {% else %} 
                                    <a name="advantage"></a>Почему нам доверяют</div>
                                    {% endif %} 
                                <div class="advantage__bullets">
                                    <div class="advantage__bullets-left">
                                        <div class="bullets__item bullets_margin">
                                            <p class="bullets__text bullets__text_right bullets__text-part">Работаем ежедневно</p>
                                            <img class="bullets__img" src="../img/advantage/advantage_01.png" alt="Работаем ежедневно" width="90" height="90">
                                        </div>
                                        <div class="bullets__item">
                                            <p class="bullets__text bullets__text_right bullets__text-part">бесплатный выезд</p>
                                            <img class="bullets__img" src="../img/advantage/advantage_02.png" alt="бесплатный выезд" width="90" height="90">
                                        </div>
                                    </div>
                                    {% if content.defectTableId == 2 and content.cityId == 0 %} 
                                    <!-- екатеринбург -->          
                                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Acd56451feb85698ba9f2e9b3d73a50a79fcc1dac1546c1740543e3e8620723d3&amp;width=400&amp;height=320&amp;lang=ru_RU&amp;scroll=true"></script>
                                    {% elseif content.defectTableId == 2 and content.cityId == 1 %} 
                                    <!-- челябинск -->
                                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A23af0d4b28c443dcf7008c6d05656f148b0d94d288f295d61136242a716e65c4&amp;width=400&amp;height=320&amp;lang=ru_RU&amp;scroll=true"></script>
                                    {% elseif content.defectTableId == 2 and content.cityId == 2 %} 
                                    <!-- тюмень -->
                                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A7b5a8115f94a9a742a335834e12ac517d3803d32ef23abb18a2586cc6e9545b1&amp;width=400&amp;height=320&amp;lang=ru_RU&amp;scroll=true"></script>
                                    {% else %} 
                                    <img class="advantage__img" src="img/banners/banner-info.jpg" width="400" alt="Наши примущества">
                                    {% endif %} 
                                    <div class="advantage__bullets-right">
                                        <div class="bullets__item bullets_margin">
                                            <img class="bullets__img" src="../img/advantage/advantage_03.png" alt="бесплатная диагностика" width="90" height="90">
                                            <p class="bullets__text bullets__text_left bullets__text-part">бесплатная диагностика</p>

                                        </div>
                                        <div class="bullets__item">
                                            <img class="bullets__img" src="../img/advantage/advantage_04.png" alt="гарантия на наши услуги" width="90" height="90">
                                            <p class="bullets__text bullets__text_left bullets__text-part">гарантия на наши услуги</p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>


                        <!-- конец переноса -->
                        {% include 'repair_form.tpl' %}
                        <section class="brand brand_margin">
                            <div class="container4">
                                <div class="section__title section__title_black section__title_margin">ремонт {{content.otherBrandSectionTitle}} брендов</div>
                            
                                <!-- Карусель брендов -->
                                <div class="brand-items">
                                    <div id="carousel_br" class="carousel_br">
                                        <!--<button class="arrow_br prev_br"><img src="img/reviews/reviews_left.png"></button>-->
                                        <div class="gallery_br">
                                            <div class="image_br">
                                                
                                            </div>
                                        </div>
                                        <button id="btn_brand_all" class="arrow_br color_btn_1">показать все бренды</button>
                                    </div>
                                    <!-- Карусель брендов -->
                                </div>
                            </div>
                        </section>
                        <section class="services-style" id="services">
                            <div class="container4">
                                <div class="section__title section__title_margin">
                                    <a name="services"></a>другие услуги<br>наших мастеров
                                </div>
                                <div class="services-items services-items_margin">
                                    {% for menu,data in content.serviceItems %}
                                    {% if content.serviceTitle != menu %}           
                                    <div class="services-item">
                                        <img class="services__img_margin" src="{{data.img}}" alt="{{menu}}" title="{{menu}}">
                                        <a class="services__btn color_btn_1" href="{{data.link}}">Ремонт<br>{{menu|slice(7,100)}}</a>
                                    </div>
                                    {% endif %} 
                                    {% endfor %}
                                </div>
                            </div>
                        </section>
                        <section class="terms terms_margin" id="terms"> 
                            <div class="container4">
                                <div class="section__title section__title_black section__title_margin">
                                    <a name="terms"></a>условия обслуживания</div>
                                <p class="section__text">
                                    Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе за техникой, случается, что
                                    она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.</p>
                                <p class="section__text">Бытовая техника создана для того, чтобы облегчить повседневную жизнь. Но для того, чтобы сохранить радость от обладания ею на годы вперед, необходимо заботиться о ее состоянии. Тем не менее, даже при самом тщательном уходе
                                    за техникой, случается, что она выходит из строя. Однако даже незначительная поломка требует профессионального анализа причины, поэтому в случае неприятности следует обратиться к специалистам.
                                </p>
                            </div>
                        </section>
                        {% include 'question_form.tpl' %}
                    </div>
                </div>
            </section>
        </main>
    </div>
    {% include 'footer.tpl' %}   
    <script defer src="js/jquery-3.4.1.js"></script> 
    <script defer src="js/jquery.maskedinput.js"></script>
    <script defer src="js/brand.js"></script>
    <script defer src="js/script.js"></script>
    <script defer src="js/menu_2.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script defer src="js/city.js"></script>
    <script>
        jQuery(document).ready(function() {
            jQuery("a.scroll_to").click(function () {
                elementClick = jQuery(this).attr("href")
                destination = jQuery(elementClick).offset().top;
                jQuery("html:not(:animated),body:not(:animated)").animate({scrollTop: destination}, 1100);
                return false;
            });
        });
    </script>

</body>

</html>