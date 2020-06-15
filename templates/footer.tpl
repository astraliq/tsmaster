<footer class="footer footer_padding">
    <div class="container">
        <div class="footer__items">
            <div class="footer__item">
                <div class="logo-name">
                    <a name="contacts"></a>
                    <div class="logo__title">
                        <a class="logo__link" href="/">{{ content.siteName | raw }}</a>
                    </div>
                    <p class="logo__subtitle section__subtitle_white">
                        ремонт&nbsp;бытовой&nbsp;техники&nbsp;в&nbsp;<span class="city__city-footer"></span>
                    </p>
                </div>
            </div>
            <div class="footer__item">
                <p class="footer__title text_margin_1">Ремонт</p>
                <ul class="footer__list">
                    {% for menu,link in content.service_menu %} {% if menu != 'главная' %}
                    <li class="footer__menu_item text_margin_1">
                        <a class="footer__menu_link text_uppercase text_grey" href="{{ link }}">{{ menu | raw }}</a>
                    </li>
                    {% endif %} {% endfor %}
                </ul>
            </div>
            <div class="footer__item">
                <ul class="footer__list">
                    {% for menu,link in content.main_menu %}
                    <li class="footer__menu_item text_margin_2">
                        <a class="footer__menu_link text_grey" href="{{ link }}">{{ menu | raw }}</a>
                    </li>
                    {% endfor %}
                </ul>
            </div>
            <div class="footer__item">
                <div class="footer-city">
                    <ul class="footer__list">
                        <li class="footer__menu_item text_margin_3">
                            <a class="footer__menu_link text_white" href="#">Город</a>
                        </li>
                        <li class="footer__menu_item text_margin_3">
                            <a class="footer__menu_link text_white" href="#">Телефон</a>
                        </li>
                        <li class="footer__menu_item text_margin_3">
                            <div class="text_white">График работы</div>
                            <div class="text_white">Без перерывов, выходных<br>и праздничных дней<br>с 09:00 до 21:00</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- информационный блок -->
    <div class="inf_data screen_off" data-city_id="{{content.cityId}}" data-city_inf="{{content.cityInf}}"></div>
</footer>
<section class="plan-b-style">
    <div class="dev-planb">
        Разработано в&nbsp;
        <a href="http://plan-b.studio" style="text-decoration: none;">
            <div class="plan-b">
                <span class="planb_p">p</span><span class="planb_l">l</span> <span class="planb_a">a</span><span class="planb_n">n</span>&nbsp;<span class="planb_b">b</span
                >
            </div>
        </a>
    </div>
</section>