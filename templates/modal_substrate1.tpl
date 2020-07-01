<div class="darkback darkback-master">
            <div class="modal-window modal-master">
                <div class="close-master"></div>
                <div class="modal-content" id="master">
                    <div class="modal-title modal-title_margin">
                        Консультация мастера по ремонту стиральных машин
                    </div>
                    <div class="modal_align">
                        <textarea class="modal-textarea" name="text" placeholder="Опишите, что случилось с вашей стиральной машиной">{% if content.defectTableId == 2 %}{{ content.pageTitle }}{% endif %}</textarea>
                        <label class="modal-input-label__name modal-input-label_margin">выберите бренд</label>
                        <div class="select_cover">
                            <div class="select_cover_arrow"></div>
                            <select class="modal-select__style" name="brand">
                            <option class="form__option" value="" data-id=""
                    {% if content.pageTitle3 == '' %}selected disabled{% endif %}>{% if content.pageTitle3 != '' %}{{ content.pageTitle3 | capitalize }}{% else %}Вид неисправности{% endif %}</option>
                    {% for device in content.devices %} {% if content.pageTitle3 != device.title %}
                    <option class="form__option" value="" data-id="{{ device.id }}">{{ device.title | capitalize }}</option>
                    {% endif %} {% endfor %}
                            </select>
                        </div>
                        <label class="modal-input-label__name modal-input-label_margin">Имя</label>
                        <input class="modal-input client_name" type="text">
                        <label class="modal-input-label__name modal-input-label_margin">Номер телефона</label>
                        <input class="modal-input client_phone" type="text" name="phone" maxlength="16">
                        <button class="modal-btn" type="button">Заказать консультацию</button>
                    </div>
                    <div class="modal-politics">
                        <p>Нажимая на кнопку, вы подтверждаете своё согласие с нашей</p>
                        <a class="modal-politics__link" href="https://best-service.pro/politics.pdf">политикой конфиденциальности и обработки персональных данных</a>
                    </div>
                    <div class="modul-remark">
                    Наш мастер свяжется с вами в течение 10 минут и поможет устранить неисправность
                    </div>
                    <div class="attention_text">Или позвоните нам
                        <span class="dbfire" data-dbfire="Phone1">
                        <a class="callibri_phone" href="tel:+7 (343) 243-54-51">+7 (343) 243–54–51</a>
                    </span>
                    </div>
                </div>
            </div>
        </div>