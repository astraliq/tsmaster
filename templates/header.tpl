<header class="header-style">
        <div class="container">
            <nav class="menu__company">
                <ul class="menu__items">
                    {% for menu,link in content.jsonDb.main_menu %}
                    <li class="menu__item menu__item_margin">
                        <a class="menu__link" href="{{link}}">{{menu|raw}}</a>
                    </li>
                    {% endfor %}
                </ul>
            </nav>
            <div class="logo-text-tel logo-text-tel_margin">
                <div class="logo-name">
                    <div class="logo__title">
                        <a class="logo__link" href="/">{{ content.siteName|raw }}</a>
                    </div>
                    <p class="logo__subtitle">ремонт бытовой техники в Екатеринбурге</p>
                </div>
                <div class="tel">
                    <div class="tel__icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="mdi-cellphone-iphone" width="30" height="35" viewBox="0 0 24 24"><path d="M16,18H7V4H16M11.5,22A1.5,1.5 0 0,1 10,20.5A1.5,1.5 0 0,1 11.5,19A1.5,1.5 0 0,1 13,20.5A1.5,1.5 0 0,1 11.5,22M15.5,1H7.5A2.5,2.5 0 0,0 5,3.5V20.5A2.5,2.5 0 0,0 7.5,23H15.5A2.5,2.5 0 0,0 18,20.5V3.5A2.5,2.5 0 0,0 15.5,1Z" /></svg></div>
                    <div class="tel__number"><a class="tel__link" href="tel:+73432435451">+7 (343) 243-54-51</a></div>
                    <button class="btn-phone tel__btn">Заказать звонок</button>
                </div>
            </div>
        {% if content.pageId == 1 %}           
            {% include 'service_menu.tpl' %}                           
        {% endif %}
        {% if content.pageId == 1 %}           
             <div class="bullet__items bullet__items_margin">
        {% elseif content.pageId != 1 %}                      
             <div class="bullet__items bullet__items_margin bullet__items_top">                        
        {% endif %}            
                <div class="bullet__item">
                    <img class="bullet__img" src="img/bullets/01.jpg" alt="Работаем ежедневно">
                    <div class="bullet__text">Работаем ежедневно</div>
                </div>
                <div class="bullet__item">
                    <img class="bullet__img" src="img/bullets/02.jpg" alt="бесплатный выезд">
                    <div class="bullet__text">бесплатный выезд</div>
                </div>
                <div class="bullet__item">
                    <img class="bullet__img" src="img/bullets/03.jpg" alt="бесплатная диагностика">
                    <div class="bullet__text">бесплатная диагностика</div>
                </div>
                <div class="bullet__item">
                    <img class="bullet__img" src="img/bullets/04.jpg" alt="гарантия на наши услуги">
                    <div class="bullet__text">гарантия<br>на наши услуги</div>
                </div>
            </div>
        </div>
        <!-- modal window -->
        <div class="darkback-phone screen_off modal_off">
            <div class="modal-window modal-phone screen_off">
                <div class="close-phone">&#10006;</div>
                <div class="modal-content" id="phone">
                    <div class="section__title section__title_black section__title_margin">Заказать звонок</div>
                    <input class="input input_margin client_name" type="text" placeholder="Ваше имя" maxlength="30">
                    <input class="input input_margin client_phone" type="tel" name="phone" maxlength="16" placeholder="Номер телефона">
                    <button class="button button-phone section__title_margin" type="button">Заказать звонок</button>
                    <div class="modal-text modal-text_margin">
                        <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                        <a class="modal-link" href="#">политикой конфиденциальности и обработки персональных данных</a>
                    </div>
                    <div>Или позвоните нам</div>
                    <div class="tel__number"><a class="tel__link" href="tel:+73432435451">+7 (343) 243-54-51</a></div>
                </div>
            </div>
            <div class="reaction-phone screen_off">
                <div class="section__title section__title_black section__title_margin">
                    Ваша заявка<br> принята
                </div>
                <div class="reaction-text">
                    В течении 10–ти минут наш менеджер свяжется с вами.<br> Спасибо.
                </div>
            </div>
        </div>
    </header>