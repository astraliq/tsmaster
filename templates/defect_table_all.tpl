<div class="container5" id="prices" style="display: none;">
    <div class="section__title section__title_black section__title_margin">
        цены на услуги:
    </div>
    <div class="cost-table_position">
        {% for menu,data in content.serviceItems %}
        {% if content.serviceTitle != menu %}           
        <div class="services-item">
            <img class="services__img_margin" src="{{data.img}}" alt="{{menu}}" title="{{menu}}">
            <a class="services__btn" href="{{data.link}}">Ремонт<br>{{menu|slice(7,100)}}</a>
        </div>
        {% endif %} 
        {% endfor %}
        <ul>
            <li></li>
        </ul>


        <div class="cost-table__grid cost-table_margin">
            <div class="cell-title">вид работ</div>
            <div class="cell-title">стоимость, от<sup>*</sup></div>
            {% for repType in content.repTypes %}
            <div class="cell-name">
                <a class="cell-name__link" href="{{ repType.link }}">{{ repType.title }}</a>
            </div>
            <div class="cell-price">{{ repType.price }} {% if repType.price matches '/^\\d+$/' %} ₽ {% endif %}</div>
            {% endfor %}
        </div>
    </div>
    <div class="table-footnote table-footnote_margin">
        <sup>*</sup> Точную стоимость работ инженер определит после диагностики.<br />
    </div>
</div>
