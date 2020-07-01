<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/main.css" />
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&family=Rubik:wght@300;400;700&display=swap" rel="stylesheet" />
        <link rel="shortcut icon" href="/favicon.ico" />
        <title>{{ content.siteName | raw }}</title>
    </head>

    <body>
        <div class="top-line"></div>
        {% include 'header.tpl' %}
        <main class="main-style">
            <section class="error404">
                <div class="container">
                    <div class="error404-block">
                        <div class="error404-text">
                            <h1 class="error404-h3">Ошибка</h1>
                            <h1 class="error404-h1">404</h1>
                            <p class="error404__text">Такой страницы не существует.</p>
                            <p class="error404__text">
                                Вы можете начать с <a class="error404_link" href="/">Главной</a> страницы, либо сразу же заполнить форму вызова мастера.
                            </p>
                            <p class="error404__text">Или позвоните нам</p>
                            <div class="tel__number"><a class="tel__link error404_tel" href="tel:+73432435451">+7 (343) 243-54-51</a></div>
                        </div>
                        <div class="error404__form">
                            <div class="modal-content" id="form404">
                                <div class="modal-title modal-title_margin">
                                    Консультация мастера по ремонту {{content.pageTitle|slice(7,100)}}
                                </div>
                                <div class="modal_align">
                                    <textarea class="modal-textarea defect" name="text" placeholder="Опишите, что случилось с вашей стиральной машиной">{% if content.defectTableId == 2 %}{{ content.pageTitle }}{% endif %}</textarea>
                                    <label class="modal-input-label__name modal-input-label_margin">выберите технику</label>
                                    <div class="select_cover">
                                        <div class="select_cover_arrow"></div>
                                        <select class="modal-select__style device" name="device">
                                        <option class="form__option" value="" data-id="{{content.deviceId}}"
                                {% if content.pageTitle3 == '' %}selected disabled{% endif %}>{% if content.pageTitle3 != '' %}{{ content.pageTitle3 | capitalize }}{% else %}Вид техники{% endif %}</option>
                                {% for device in content.devices %} {% if content.pageTitle3 != device.title %}
                                <option class="form__option" value="" data-id="{{ device.id }}">{{ device.title | capitalize }}</option>
                                {% endif %} {% endfor %}
                                        </select>
                                    </div>
                                    <label class="modal-input-label__name modal-input-label_margin">Имя</label>
                                    <input class="modal-input client_name" type="text" maxlength="30">
                                    <label class="modal-input-label__name modal-input-label_margin">Номер телефона</label>
                                    <input class="modal-input client_phone" type="text" name="phone" maxlength="16">
                                    <button class="modal-btn button-master" type="button">Заказать консультацию</button>
                                </div>
                                <div class="modal-politics">
                                    <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                                    <a class="modal-politics__link" href="/politics.pdf">политикой конфиденциальности и обработки персональных данных</a>
                                </div>
                                <div class="modul-remark">
                                Наш мастер свяжется с вами в течение 10 минут и поможет устранить неисправность
                                </div>
                                <div class="attention_text">Или позвоните нам
                                    <span class="dbfire" data-dbfire="Phone1">
                                    <a class="callibri_phone tel__link"> <span class="city__city-footer-phone"></span></a>
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        {% include 'footer.tpl' %}
        <script defer src="js/jquery-3.4.1.js"></script>
        <script defer src="js/jquery.maskedinput.js"></script>
        <script defer src="js/script.js"></script>
        <script defer src="js/menu_1.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
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
