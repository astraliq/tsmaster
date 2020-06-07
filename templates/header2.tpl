<header class="header-style">
  <!-- стрелка перехода на верх -->
    <div id="anchor-arrow" class="anchor-arrow"></div>
    <a href="#anchor-arrow" class="anchor-btn scroll_to">&#8679;</a>
    <!-- стрелка перехода на верх -->
  <div class="container">
    <nav class="menu__company">
      <ul class="menu__items">
        {% for menu,link in content.jsonDb.main_menu %}
        <li class="menu__item menu__item_margin">
          <a class="menu__link" href="{{ link }}">{{ menu | raw }}</a>
        </li>
        {% endfor %}
      </ul>
    </nav>
    <div class="logo-text-tel logo-text-tel_margin">
      <div class="logo-name">
        <div class="logo__title">
          <a class="logo__link" href="/"> ТехСервис Мастер </a>
        </div>
        <p class="logo__subtitle">ремонт бытовой техники в <span class="sity_sity"></span></p>
      </div>
      <div class="tel">
        <div class="tel__icon">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            version="1.1"
            id="mdi-cellphone-iphone"
            width="30"
            height="35"
            viewBox="0 0 24 24"
          >
            <path
              d="M16,18H7V4H16M11.5,22A1.5,1.5 0 0,1 10,20.5A1.5,1.5 0 0,1 11.5,19A1.5,1.5 0 0,1 13,20.5A1.5,1.5 0 0,1 11.5,22M15.5,1H7.5A2.5,2.5 0 0,0 5,3.5V20.5A2.5,2.5 0 0,0 7.5,23H15.5A2.5,2.5 0 0,0 18,20.5V3.5A2.5,2.5 0 0,0 15.5,1Z"
            />
          </svg>
        </div>
        <div class="tel__number">
          <a class="tel__link" href="tel:+73432435451"><span class="sity__phone"></span></a>
        </div>
        <button class="tel__btn">Заказать звонок</button>
      </div>
    </div>
    <div class="bullet__items bullet__items_top bullet__items_margin">
      <div class="bullet__item">
        <img
          class="bullet__img"
          src="../img/bullets/01.jpg"
          alt="Работаем ежедневно"
        />
        <div class="bullet__text">Работаем ежедневно</div>
      </div>
      <div class="bullet__item">
        <img
          class="bullet__img"
          src="../img/bullets/02.jpg"
          alt="бесплатный выезд"
        />
        <div class="bullet__text">бесплатный выезд</div>
      </div>
      <div class="bullet__item">
        <img
          class="bullet__img"
          src="../img/bullets/03.jpg"
          alt="бесплатная диагностика"
        />
        <div class="bullet__text">бесплатная диагностика</div>
      </div>
      <div class="bullet__item">
        <img
          class="bullet__img"
          src="../img/bullets/04.jpg"
          alt="гарантия на наши услуги"
        />
        <div class="bullet__text">гарантия<br />на наши услуги</div>
      </div>
    </div>
</header>
