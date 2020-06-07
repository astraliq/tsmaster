<section class="form-search">
    <div class="container2">
        <div class="form-search__plate form-search_margin">
            <div class="form-search__text">
                <div class="section__title section__title_black">
                    <a name="action">узнайте стоимость и<br />оформите заявку на ремонт</a>
                </div>
                <p class="form-search__subtitle form-search__subtitle_margin">Наш оператор перезвонит Вам через 2 минуты.</p>
            </div>
            <form class="form__items form-search_margin">
                <div class="form__item">
                    <div class="before_1">
                        <select class="select input_margin device" type="text">
                            <option class="form__option" value=""></option>
                            {% for technic,desc in content.jsonDb.defects %}
                            <option class="form__option" value="">{{ technic }}</option>
                            {% endfor %}
                        </select>
                    </div>
                    <input class="input client_name" type="text" placeholder="Ваше имя" />
                </div>
                <div class="form__item">
                    <div class="before_2">
                        <select class="select input_margin defect" type="text">
                            <option class="form__option" value=""></option>
                            <option class="form__option" value="">Не стирает</option>
                            <option class="form__option" value="">Не сливает воду</option>
                        </select>
                    </div>
<<<<<<< HEAD
                    <input class="input client_phone" name="phone" type="text" maxlength="16" placeholder="Номер телефона" />
=======
                    <input class="input client_phone" name="phone" type="tel" maxlength="16" placeholder="Номер телефона" />
>>>>>>> pr/9
                </div>
                <div class="form__item">
                    <div class="before_3">
                        <input class="input input_margin" disabled type="text" placeholder="от ______ рублей" />
                    </div>
                    <button class="button button-repair">Отправить!</button>
                </div>
            </form>
        </div>
    </div>
</section>
