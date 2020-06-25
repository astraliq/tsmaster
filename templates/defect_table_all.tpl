<div class="container5" id="prices" style="display: none;">
    <div class="section__title section__title_black section__title_margin">
        цены на услуги:
    </div>
    <div class="cost_table_all">
        {% set ctaId = 1 %} {% for device in content.devices %} {% set dev = device.title %} <input id="cta-{{ ctaId }}" class="hide_input" type="checkbox" {%
        if content.pageTitle3 == device.title %}checked {%endif%}/>
        <label for="cta-{{ ctaId }}" class="cost_table_all-device">{{ device.title | capitalize }}</label>
        <div class="cost_table_all-device_defect">
            {% for defect in content.defectsAll[dev] %}
            <div class="cost_table_all-row">
                <div class="cost_table_all-row-name">
                    <a class="cost_table_all-row-name__link" href="{{ device.link ~ defect.link }}">{{ defect.title }}</a>
                </div>
                <div class="cost_table_all-row-price">{{ defect.price }} {% if defect.price matches '/^\\d+$/' %} ₽ {% endif %}</div>
            </div>
            {% endfor %}
        </div>
        {% set ctaId = ctaId + 1 %} {% endfor %}
    </div>
    <div class="table-footnote table-footnote_margin"><sup>*</sup> Точную стоимость работ инженер определит после диагностики.<br /></div>
</div>
