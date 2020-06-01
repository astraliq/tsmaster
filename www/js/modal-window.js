document.querySelector('.btn-phone').onclick = function(e) {
    e.preventDefault();
    wModal.firstCheck('phone');
}

document.querySelector('.btn-master').onclick = function(e) {
    e.preventDefault();
    wModal.firstCheck('master');
}

document.querySelector('.btn-review').onclick = function(e) {
    e.preventDefault();
    wModal.firstCheck('review');
}

class ModalWindow {
    constructor(checkType) {
        this.checkType = checkType;
    }

    firstCheck(check) {
        let darkBack;
        let modalType;
        let closeCross;
        let btnAction;

        if (check == 'phone') {
            darkBack = 'darkback-phone';
            modalType = 'modal-phone';
            closeCross = 'close-phone';
            btnAction = 'button-phone';
        } else if (check == 'master') {
            darkBack = 'darkback-master';
            modalType = 'modal-master';
            closeCross = 'close-master';
            btnAction = 'button-master';
        } else if (check == 'review') {
            darkBack = 'darkback-review';
            modalType = 'modal-review';
            closeCross = 'close-review';
            btnAction = 'button-review';
        }

        this.renderModal(darkBack, modalType, closeCross, btnAction, check);
    }

    renderModal(dBack, mType, cCross, btnA, check) {
        let dB_Class = document.querySelector(`.${dBack}`);
        let mT_Class = document.querySelector(`.${mType}`);
        let cC_Class = document.querySelector(`.${cCross}`);
        let btnClass = document.querySelector(`.${btnA}`);
        dB_Class.classList.remove('screen_off');
        mT_Class.classList.remove('screen_off');

        btnClass.onclick = function(e) {
            e.preventDefault();
            wModal.renderAction(dBack, mType, cCross, check);
        };

        cC_Class.onclick = function(e) {
            e.preventDefault();
            wModal.closeModal(dBack, mType);
        };

        // document.addEventListener('mouseup', (e) => {
        //     if (mType != e.target && e.currentTarget.parentNode != mType) {
        //         dB_Class.classList.add('screen_off');
        //     }
        // });

    }
    renderAction(dBack, mType, cCross, check) {
        let mw_class = document.querySelector(`.${mType}`);
        mw_class.classList.add('modal-after-button');

        console.log(mw_class);

        let renderDiv = document.getElementById(check);
        let str;

        if (check == 'phone') {
            str = `<div class="after-button__title modal-text_margin">Ваша заявка принята.</div>
                   <div class="after-button__text">Наш менеджер свяжется с вами в ближайшее время.</div>`;
        } else if (check == 'master') {
            str = `<div class="after-button__title modal-text_margin">Ваша заявка принята.</div>
            <div class="after-button__text">Наш мастер свяжется с вами в ближайшее время и поможет устранить неисправность.</div>`;
        } else {
            str = `<div class="after-button__title_review modal-text_margin">Мы получили ваш отзыв.</div>
            <div class="after-button__text_review">В некоторых случаях, наш менеджер может связаться с вами для уточнения деталей.<br><br>Спасибо.</div>`;
        }
        //  = `<div>${check}</div>`;
        renderDiv.innerHTML = str;

        document.querySelector(`.${cCross}`).onclick = function(e) {
            e.preventDefault();
            wModal.closeModal(dBack, mType);
        }
    }

    closeModal(dBack, mType) {
        let dB_Class = document.querySelector(`.${dBack}`);
        let mT_Class = document.querySelector(`.${mType}`);
        dB_Class.classList.add('screen_off');
        mT_Class.classList.add('screen_off');
    }
}

let wModal = new ModalWindow();