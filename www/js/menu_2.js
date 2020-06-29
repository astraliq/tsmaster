'use strict';

class MenuHandler {
    constructor(menuItemsClass) {
        this.menuItems = document.querySelectorAll(menuItemsClass);
        this.dataType;
        this.section;
        this.animDuration = 500;
    }

    init() {
        this.menuItems.forEach((item) => {
            item.addEventListener('click', (e) => {
                this.dataType = item.dataset.type;
                this.section = '#' + this.dataType;
                if ($(this.section).css('display') == 'none') {
                    this.hideAll();
                    if (item.dataset.type === 'reviews') {
                        $('#reviews_small').animate({ height: 'hide', easing: 'swing' }, this.animDuration);
                    } else if ($('#reviews_small').css('display') == 'none') {
                        $('#reviews_small').animate({ height: 'show', easing: 'swing' }, this.animDuration);
                    }
                    if (item.dataset.type === 'prices') {
                        $('#prices_min').animate({ height: 'hide', easing: 'swing' }, this.animDuration);
                    } else if ($('#prices_min').css('display') == 'none') {
                        $('#prices_min').animate({ height: 'show', easing: 'swing' }, this.animDuration);
                    }
                    $(this.section).animate({ height: 'show', easing: 'swing' }, this.animDuration);
                    $('#advantage_bullets_small').animate({ height: 'show', easing: 'swing' }, this.animDuration);
                }
                this.scrollTo('changedBlocks');
                window.location.hash = this.dataType;
            });
        });
    }

    // запускаем замену блоков, если есть хеш в урл
    checkUrlHash() {
        if (window.location.hash) {
            this.hideAll();
            $(window.location.hash).animate({ height: 'show', easing: 'swing' }, this.animDuration);
            if (window.location.hash === '#reviews') {
                $('#reviews_small').animate({ height: 'hide', easing: 'swing' }, this.animDuration);
            } else if ($('#reviews_small').css('display') == 'none') {
                $('#reviews_small').animate({ height: 'show', easing: 'swing' }, this.animDuration);
            }
            if (window.location.hash === '#prices') {
                $('#prices_min').animate({ height: 'hide', easing: 'swing' }, this.animDuration);
            } else if ($('#prices_min').css('display') == 'none') {
                $('#prices_min').animate({ height: 'show', easing: 'swing' }, this.animDuration);
            }
            $('#advantage_bullets_small').animate({ height: 'show', easing: 'swing' }, this.animDuration);
        }
    }

    scrollTo(id) {
        jQuery('html:not(:animated),body:not(:animated)').animate(
            {
                scrollTop: $('#' + id).offset().top,
            },
            1200
        );
    }

    hideAll() {
        this.menuItems.forEach((item) => {
            let dataType = item.dataset.type;
            $('#' + dataType).animate({ height: 'hide', easing: 'swing' }, this.animDuration);
            $('#advantage').animate({ height: 'hide', easing: 'swing' }, this.animDuration);
        });
    }
}
let upperMenu = new MenuHandler('.menu__items a');
let footerMenu = new MenuHandler('.footer__list a');

upperMenu.init();
upperMenu.checkUrlHash();
footerMenu.init();
