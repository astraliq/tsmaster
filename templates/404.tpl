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
                                <div class="section__title section__title_black section__title_margin">
                                    Вызвать мастера
                                </div>
                                <input class="input input_margin client_name" type="text" placeholder="Ваше имя" maxlength="30" />
                                <input class="input input_margin client_phone" type="text" placeholder="Номер телефона" />
                                <textarea class="text-block input_margin defect" rows="4" cols="29" placeholder="Какая у вас поломка?"></textarea>
                                <select class="select input_margin device" type="text">
                                    {% for device in content.devices %}
                                    <option class="form__option" value="" data-id="{{ device.id }}">{{ device.title }}</option>
                                    {% endfor %}
                                </select>
                                <button class="button button-master section__title_margin" type="button">Вызвать мастера</button>
                                <div class="modal-text modal-text_margin">
                                    <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                                    <a class="modal-link" href="#">политикой конфиденциальности и обработки персональных данных</a>
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
