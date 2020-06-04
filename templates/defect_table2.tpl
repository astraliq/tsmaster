<div class="container3">
    <div class="section__title section__title_black section__title_margin">
        для устранения неисправностей может потребоваться:
    </div>
    <div class="cost-table_position">
        <div class="cost-table__grid cost-table_margin">
            <div class="cell-title">вид работ</div>
            <div class="cell-title">стоимость, от<sup>*</sup></div>
            {% for repType in content.repTypes %}
            <div class="cell-name">
                <a class="cell-name__link" href="{{ repType.link }}">{{ repType.title }}</a>
            </div>
            <div class="cell-price">{{ repType.price }} ₽</div>
            {% endfor %}
        </div>
    </div>
    <div class="table-footnote table-footnote_margin">
        <sup>*</sup> Точную стоимость работ инженер определит после диагностики.<br />
        <sup>**</sup> Диагностика бесплатная в случае осуществления ремонта.
    </div>
</div>
