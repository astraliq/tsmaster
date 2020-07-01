<div class="darkback darkback-master screen_off modal_off">
            <div class="modal-window modal-master screen_off">
                <div class="close-master"></div>
                <div class="modal-content" id="master">
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