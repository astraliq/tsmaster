<div class="service__menu">
    <div class="service__items">
        {% for menu,link in content.service_menu %} {% if menu != 'главная' %}
        <hr class="service__hr" noshade color="#1b1b1b" />
        {% endif %}
        <a class="service__link" href="{{ link }}">
            <div class="service__item scroll_to">{{ menu | raw }}</div>
        </a>
        {% endfor %}
    </div>
</div>
