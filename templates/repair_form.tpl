<section class="form-search">
    <div class="container2">
        <div class="form-search__plate form-search_margin" id="action">
            <div class="form-search__text">
                <div class="section__title section__title_black">
                    <a name="action">узнайте стоимость и<br />оформите заявку на ремонт</a>
                </div>
                <p class="form-search__subtitle form-search__subtitle_margin">Наш оператор перезвонит Вам в течении 2-х минут.</p>
            </div>
            <form class="form__items form-search_margin">
                <div class="form__item">
                    <div class="before_1 input_margin">
                        <select class="select device" type="text" id="device_select">
                            <option class="form__option" value="" selected disabled>Выберете вид техники</option>
                            {% for device in content.devices %}
                            <option class="form__option" value="" data-id="{{ device.id }}">{{ device.title | capitalize }}</option>
                            {% endfor %}
                        </select>
                    </div>
                    <input class="input client_name" type="text" placeholder="Ваше имя" />
                </div>
                <div class="form__item">
                    <div class="before_2 input_margin">
                        <select class="select defect" type="text" id="defect_select">
                            <option class="form__option" value="" selected disabled>Вид неисправности</option>
                        </select>
                    </div>
                    <input class="input client_phone" name="phone" type="text" maxlength="16" placeholder="Номер телефона" />
                </div>
                <div class="form__item">
                    <div class="before_3">
                        <input class="input input_margin" id="defect_price" disabled type="text" placeholder="от ______ рублей" />
                    </div>
                    <button class="button button-repair">Отправить!</button>
                </div>
            </form>
        </div>
    </div>
</section>
