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
        this.menuItems.forEach((item) => {
            if (item.dataset.type !== 'contacts') {
                item.addEventListener('click', (e) => {
                    this.dataType = item.dataset.type;
                    this.section = $('#' + this.dataType);
                    if (this.section.css('display') == 'none') {
                        this.hideAll();
                        $(this.section).animate({ height: 'show', easing: 'swing' }, 500);
                    }
                });
            }
        });
    }

    hideAll() {
        this.menuItems.forEach((item) => {
            if (item.dataset.type !== 'contacts') {
                let dataType = item.dataset.type;
                $('#' + dataType).animate({ height: 'hide', easing: 'swing' }, 500);
            }
        });
    }
}
let upperMenu = new MenuHandler('.menu__items a');

upperMenu.init();
