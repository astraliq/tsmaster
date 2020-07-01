<section class="contacts" id="contacts" style="display: none;">
    <div class="contacts-container">
        <h3 class="section__title section__title_margin">Контакты</h3>
        <div class="contacts_text">
            <div class="contacts_text-map">
                {% if content.cityId == 0 %}
                <!-- екатеринбург -->
                <script
                    type="text/javascript"
                    charset="utf-8"
                    async
                    src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Acd56451feb85698ba9f2e9b3d73a50a79fcc1dac1546c1740543e3e8620723d3&amp;width=600&amp;height=320&amp;lang=ru_RU&amp;scroll=true"
                ></script>
                {% elseif content.cityId == 1 %}
                <!-- челябинск -->
                <script
                    type="text/javascript"
                    charset="utf-8"
                    async
                    src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A23af0d4b28c443dcf7008c6d05656f148b0d94d288f295d61136242a716e65c4&amp;width=600&amp;height=320&amp;lang=ru_RU&amp;scroll=true"
                ></script>
                {% elseif content.cityId == 2 %}
                <!-- тюмень -->
                <script
                    type="text/javascript"
                    charset="utf-8"
                    async
                    src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A7b5a8115f94a9a742a335834e12ac517d3803d32ef23abb18a2586cc6e9545b1&amp;width=600&amp;height=320&amp;lang=ru_RU&amp;scroll=true"
                ></script>
                {% else %}
                <img class="advantage__img" src="img/banners/banner-info.jpg" width="600" height="auto" alt="Наши примущества" />
                {% endif %}
            </div>
            <div class="contacts_text-data">
                <div class="footer-city">
                    <ul class="footer__list">
                        <li class="footer__menu_item text_margin_3">
                            <a class="footer__menu_link"><span class="city__city-footer2"></span></a>
                        </li>
                        <li class="footer__menu_item text_margin_3">
                            <a class="footer__menu_link"><span class="city__city-footer-phone"></span></a>
                        </li>
                        <li class="footer__menu_item text_margin_3">
                            <p>График работы:</p>
                            <p>Без перерывов, выходных и праздничных дней</p>
                            <span>с 09:00 до 21:00</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
