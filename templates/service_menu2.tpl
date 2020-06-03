<div class="service__menu service__menu_margin">
    <div class="service__items service__items-part">
        {% for menu,link in content.service_menu %} {% if menu != 'главная' %}
        <hr class="service__hr service__hr-part" noshade color="#1b1b1b" />
        {% endif %}
        <a class="service__link" href="{{ link }}">
            <div class="service__item">{{ menu | raw }}</div>
        </a>
        {% endfor %}
    </div>
</div>
