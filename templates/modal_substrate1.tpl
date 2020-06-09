<div class="darkback darkback-master screen_off modal_off">
    <div class="modal-window modal-master screen_off">
        <div class="close-master">&#10006;</div>
        <div class="modal-content" id="master">
            <div class="section__title section__title_black section__title_margin">
                Вызвать мастера
            </div>
            <input class="input input_margin client_name" type="text" placeholder="Ваше имя" maxlength="30" />
            <input class="input input_margin client_phone" type="text" name="phone" maxlength="16" placeholder="Номер телефона" />
            <textarea class="text-block input_margin defect" rows="4" cols="29" placeholder="Какая у вас поломка?">
{% if content.defectTableId == 2 %}{{ content.pageTitle }}{% endif %}</textarea
            >
            <select class="select input_margin device" type="text">
                <option class="form__option" value="" data-id="">{{ content.pageTitle3 }}</option>
                {% for device in content.devices %} {% if content.pageTitle3 != device.title %}
                <option class="form__option" value="" data-id="{{ device.id }}">{{ device.title }}</option>
                {% endif %} {% endfor %}
            </select>
            <button class="button button-master section__title_margin" type="button">Вызвать мастера</button>
            <div class="modal-text modal-text_margin">
                <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                <a class="modal-link" href="#">политикой конфиденциальности и обработки персональных данных</a>
            </div>
            <div>Или позвоните нам</div>
            <div class="tel__number"><a class="tel__link" href="tel:+73432435451">+7 (343) 243-54-51</a></div>
        </div>
    </div>
</div>
