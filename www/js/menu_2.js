'use strict';

class MenuHandler {
    constructor(menuItemsClass) {
        this.menuItems = document.querySelectorAll(menuItemsClass);
        this.dataType;
        this.section;
        this.sectionHeight;
        this.sectionHeights = {
            prices: 376,
        };
    }

    init() {
        if (window.location.hash) {
            this.hideAll();
            console.log(window.location.hash);
            $(window.location.hash).animate({ height: 'show', easing: 'swing' }, 500);
            if (window.location.hash === '#reviews') {
                $('#reviews_small').animate({ height: 'hide', easing: 'swing' }, 500);
            } else if ($('#reviews_small').css('display') == 'none') {
                $('#reviews_small').animate({ height: 'show', easing: 'swing' }, 500);
            }
            $('#advantage_bullets_small').animate({ height: 'show', easing: 'swing' }, 500);
        }
        this.menuItems.forEach((item) => {
            if (item.dataset.type !== 'contacts') {
                item.addEventListener('click', (e) => {
                    this.dataType = item.dataset.type;
                    this.section = '#' + this.dataType;
                    if ($(this.section).css('display') == 'none') {
                        this.hideAll();
                        if (item.dataset.type === 'reviews') {
                            $('#reviews_small').animate({ height: 'hide', easing: 'swing' }, 500);
                        } else if ($('#reviews_small').css('display') == 'none') {
                            $('#reviews_small').animate({ height: 'show', easing: 'swing' }, 500);
                        }
                        $(this.section).animate({ height: 'show', easing: 'swing' }, 500);
                        $('#advantage_bullets_small').animate({ height: 'show', easing: 'swing' }, 500);
                    }
                    this.scrollTo('changedBlocks');
                    window.location.hash = this.dataType;
                });
            }
        });
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
            if (item.dataset.type !== 'contacts') {
                $('#' + dataType).animate({ height: 'hide', easing: 'swing' }, 500);
                $('#advantage').animate({ height: 'hide', easing: 'swing' }, 500);
            }
        });
    }
}
let upperMenu = new MenuHandler('.menu__items a');

upperMenu.init();
