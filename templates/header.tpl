<header class="header-style">
    <!-- стрелка перехода на верх 
    <div id="anchor-arrow" class="anchor-arrow"></div>
    <a href="#anchor-arrow" class="anchor-btn scroll_to">&#8679;</a>
     стрелка перехода на верх -->
        <div class="container">
        <!-- модальное окно выбора города -->
        <div class="darkback darkback_sities screen_off modal_off"><!--screen_off modal_off-->
            <div class="modal-window-sities modal-sities modal_block-sities screen_off"><!-- screen_off -->                
                <div class="modal-content">
                    <span class="modal_city content_city">Ваш город?</span>
                    <div class="modal_city_block"></div>
                </div>
            </div>
        </div>        
        <!-- модальное окно выбора города -->
            <nav class="menu__company">
                <ul class="menu__items">
                    {% for menu,data in content.main_menu %}
                    <li class="menu__item menu__item_margin">
                        <a class="menu__link scroll_to" href="{{data.link}}" data-type="{{data.dataset}}">{{menu|raw}}</a>
                    </li>
                    {% endfor %}
                </ul>
            </nav>
            <div class="logo-text-tel logo-text-tel_margin">
                <div class="logo-name">
                    <div class="logo__title">
                        <a class="logo__link" href="/">{{ content.siteName|raw }}</a>
                    </div>
                    <p class="logo__subtitle">ремонт бытовой техники в <span class="city__city"></span></p>
                </div>
                <div class="tel">
                    <div class="tel__icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="mdi-cellphone-iphone" width="30" height="35" viewBox="0 0 24 24"><path d="M16,18H7V4H16M11.5,22A1.5,1.5 0 0,1 10,20.5A1.5,1.5 0 0,1 11.5,19A1.5,1.5 0 0,1 13,20.5A1.5,1.5 0 0,1 11.5,22M15.5,1H7.5A2.5,2.5 0 0,0 5,3.5V20.5A2.5,2.5 0 0,0 7.5,23H15.5A2.5,2.5 0 0,0 18,20.5V3.5A2.5,2.5 0 0,0 15.5,1Z" /></svg></div>
                    <div class="tel__number"><a class="tel__link" href="tel:+73432435451"><span class="city__phone"></span></a></div>
                    <button class="btn-phone tel__btn color_btn_1">Заказать звонок</button>
                </div>
            </div>
        {% if content.pageId == 1 %}           
            {% include 'service_menu.tpl' %}                           
        {% endif %}
        {% if content.pageId == 1 %}           
             <div class="bullet__items bullet__items_margin" id="bullet__items">
        {% elseif content.pageId != 1 %}                      
             <div class="bullet__items bullet__items_margin bullet__items_top" id="bullet__items">                        
        {% endif %}            
                <div class="bullet__item" data-type="banner1">
                    <img class="bullet__img" src="img/bullets/01.png" alt="Работаем ежедневно">
                    <div class="bullet__text">Работаем ежедневно</div>
                </div>
                <div class="bullet__item" data-type="banner2">
                    <img class="bullet__img" src="img/bullets/02.png" alt="бесплатный выезд">
                    <div class="bullet__text">бесплатный выезд</div>
                </div>
                <div class="bullet__item" data-type="banner3">
                    <img class="bullet__img" src="img/bullets/03.png" alt="бесплатная диагностика">
                    <div class="bullet__text">бесплатная диагностика</div>
                </div>
                <div class="bullet__item" data-type="banner4">
                    <img class="bullet__img" src="img/bullets/04.png" alt="гарантия на наши услуги">
                    <div class="bullet__text">гарантия<br>на наши услуги</div>
                </div>
            </div>
        </div>
        <!-- modal window -->
        <div class="darkback darkback-phone screen_off modal_off">
            <div class="modal-window modal-phone screen_off">
                <div class="close-phone"></div>
                <div class="modal-content" id="phone">
                    <div class="modal-title modal-title_margin">Заказать звонок</div>
                    <div class="modal_align">
                        <label class="modal-input-label__name modal-input-label_margin">Имя</label>
                        <input class="modal-input client_name" type="text">
                        <label class="modal-input-label__name modal-input-label_margin">Номер телефона</label>
                        <input class="modal-input client_phone" type="text" name="phone" maxlength="16">
                        <button class="modal-btn button-phone" type="button">Заказать звонок</button>
                    </div>
                    <div class="modal-politics">
                        <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                        <a class="modal-politics__link" href="/politics.pdf">политикой конфиденциальности и обработки персональных данных</a>
                    </div>
                    <div class="modul-remark">
                        Наш оператор перезвонит вам в течение 10 минут
                    </div>
                    <div class="attention_text">Или позвоните нам
                        <span class="dbfire" data-dbfire="Phone1">
                        <a class="callibri_phone" href="tel:+7 (343) 243-54-51">+7 (343) 243–54–51</a>
                    </span>
                    </div>
                </div>
            </div>
        </div>
    </header>