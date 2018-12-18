//JS OBFUSCATED IN THE DEMO ONLY TO AVOID COPY

(function (_0xc3d6x1) {
    'use strict';
    _0xc3d6x1(window)['on']('load', function () {
        _0xc3d6x1('[data-loader="circle-side"]')['fadeOut']();
        _0xc3d6x1('#preloader')['delay'](350)['fadeOut']('slow');
        _0xc3d6x1('body')['delay'](350);
        _0xc3d6x1('.hero_in h1,.hero_in form')['addClass']('animated');
        _0xc3d6x1('.hero_single, .hero_in')['addClass']('start_bg_zoom');
        _0xc3d6x1(window)['scroll']()
    });
    _0xc3d6x1(window)['on']('scroll', function () {
        if (_0xc3d6x1(this)['scrollTop']() > 1) {
            _0xc3d6x1('.header')['addClass']('sticky')
        } else {
            _0xc3d6x1('.header')['removeClass']('sticky')
        }
    });
    _0xc3d6x1('#sidebar')['theiaStickySidebar']({
        additionalMarginTop: 150
    });
    var _0xc3d6x2 = _0xc3d6x1('nav#menu')['mmenu']({
        "\x65\x78\x74\x65\x6E\x73\x69\x6F\x6E\x73": ['pagedim-black'],
        counters: true,
        keyboardNavigation: {
            enable: true,
            enhance: true
        },
        navbar: {
            title: 'MENU'
        },
        navbars: [{
            position: 'bottom',
            content: ['<a href="#0">\xA9 2018 Panagea</a>']
        }]
    }, {
        clone: true,
        classNames: {
            fixedElements: {
                fixed: 'menu_fixed',
                sticky: 'sticky'
            }
        }
    });
    var _0xc3d6x3 = _0xc3d6x1('#hamburger');
    var _0xc3d6x4 = _0xc3d6x2['data']('mmenu');
    _0xc3d6x3['on']('click', function () {
        _0xc3d6x4['open']()
    });
    _0xc3d6x4['bind']('open:finish', function () {
        setTimeout(function () {
            _0xc3d6x3['addClass']('is-active')
        }, 100)
    });
    _0xc3d6x4['bind']('close:finish', function () {
        setTimeout(function () {
            _0xc3d6x3['removeClass']('is-active')
        }, 100)
    });
    var _0xc3d6x5 = new WOW({
        boxClass: 'wow',
        animateClass: 'animated',
        offset: 0,
        mobile: true,
        live: true,
        callback: function (_0xc3d6x6) { },
        scrollContainer: null
    });
    _0xc3d6x5['init']();
    _0xc3d6x1('a[href^="#"].btn_explore')['on']('click', function (_0xc3d6x7) {
        _0xc3d6x7['preventDefault']();
        var _0xc3d6x8 = this['hash'];
        var _0xc3d6x9 = _0xc3d6x1(_0xc3d6x8);
        _0xc3d6x1('html, body')['stop']()['animate']({
            "\x73\x63\x72\x6F\x6C\x6C\x54\x6F\x70": _0xc3d6x9['offset']()['top']
        }, 800, 'swing', function () {
            window['location']['hash'] = _0xc3d6x8
        })
    });
    _0xc3d6x1('.video')['magnificPopup']({
        type: 'iframe'
    });
    _0xc3d6x1('.magnific-gallery')['each'](function () {
        _0xc3d6x1(this)['magnificPopup']({
            delegate: 'a',
            type: 'image',
            preloader: true,
            gallery: {
                enabled: true
            },
            removalDelay: 500,
            callbacks: {
                beforeOpen: function () {
                    this['st']['image']['markup'] = this['st']['image']['markup']['replace']('mfp-figure', 'mfp-figure mfp-with-anim');
                    this['st']['mainClass'] = this['st']['el']['attr']('data-effect')
                }
            },
            closeOnContentClick: true,
            midClick: true
        })
    });
    _0xc3d6x1('#sign-in')['magnificPopup']({
        type: 'inline',
        fixedContentPos: true,
        fixedBgPos: true,
        overflowY: 'auto',
        closeBtnInside: true,
        preloader: false,
        midClick: true,
        removalDelay: 300,
        closeMarkup: '<button title="%title%" type="button" class="mfp-close"></button>',
        mainClass: 'my-mfp-zoom-in'
    });
    _0xc3d6x1('#password')['hidePassword']('focus', {
        toggle: {
            className: 'my-toggle'
        }
    });
    _0xc3d6x1('#forgot')['click'](function () {
        _0xc3d6x1('#forgot_pw')['fadeToggle']('fast')
    });

    function _0xc3d6xa(_0xc3d6x7) {
        _0xc3d6x1(_0xc3d6x7['target'])['prev']('.card-header')['find']('i.indicator')['toggleClass']('ti-minus ti-plus')
    }
    _0xc3d6x1('.accordion_2')['on']('hidden.bs.collapse shown.bs.collapse', _0xc3d6xa);

    function _0xc3d6xb(_0xc3d6x7) {
        _0xc3d6x1(_0xc3d6x7['target'])['prev']('.panel-heading')['find']('.indicator')['toggleClass']('ti-minus ti-plus')
    }
    _0xc3d6x1('.custom-search-input-2 select, .custom-select-form select')['niceSelect']();
    _0xc3d6x1('input.icheck')['iCheck']({
        checkboxClass: 'icheckbox_square-grey',
        radioClass: 'iradio_square-grey'
    });
    var _0xc3d6xc = Array['prototype']['slice']['call'](document['querySelectorAll']('.js-switch'));
    _0xc3d6xc['forEach'](function (_0xc3d6xd) {
        var _0xc3d6xe = new Switchery(_0xc3d6xd, {
            size: 'small'
        })
    });
    _0xc3d6x1('.wish_bt')['on']('click', function (_0xc3d6x7) {
        _0xc3d6x7['preventDefault']();
        _0xc3d6x1(this)['toggleClass']('liked')
    });
    _0xc3d6x1(window)['bind']('load resize', function () {
        var _0xc3d6xf = _0xc3d6x1(window)['width']();
        if (_0xc3d6x1(this)['width']() < 991) {
            _0xc3d6x1('.collapse#collapseFilters')['removeClass']('show')
        } else {
            _0xc3d6x1('.collapse#collapseFilters')['addClass']('show')
        }
    });
    _0xc3d6x1(window)['on']('scroll', function () {
        'use strict';
        if (_0xc3d6x1(this)['scrollTop']() != 0) {
            _0xc3d6x1('#toTop')['fadeIn']()
        } else {
            _0xc3d6x1('#toTop')['fadeOut']()
        }
    });
    _0xc3d6x1('#toTop')['on']('click', function () {
        _0xc3d6x1('body,html')['animate']({
            scrollTop: 0
        }, 500)
    });
    _0xc3d6x1('#carousel')['owlCarousel']({
        center: true,
        items: 2,
        loop: true,
        margin: 10,
        responsive: {
            0: {
                items: 1,
                dots: false
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            }
        }
    });
    _0xc3d6x1('#reccomended')['owlCarousel']({
        center: true,
        items: 2,
        loop: true,
        margin: 0,
        responsive: {
            0: {
                items: 1
            },
            767: {
                items: 2
            },
            1000: {
                items: 3
            },
            1400: {
                items: 4
            }
        }
    });
    _0xc3d6x1(window)['bind']('load resize', function () {
        var _0xc3d6xf = _0xc3d6x1(window)['width']();
        if (_0xc3d6xf <= 991) {
            _0xc3d6x1('.sticky_horizontal')['stick_in_parent']({
                offset_top: 50
            })
        } else {
            _0xc3d6x1('.sticky_horizontal')['stick_in_parent']({
                offset_top: 67
            })
        }
    });
    var _0xc3d6x10 = _0xc3d6x1('.secondary_nav');
    _0xc3d6x10['find']('a')['on']('click', function (_0xc3d6x7) {
        _0xc3d6x7['preventDefault']();
        var _0xc3d6x8 = this['hash'];
        var _0xc3d6x9 = _0xc3d6x1(_0xc3d6x8);
        _0xc3d6x1('html, body')['animate']({
            "\x73\x63\x72\x6F\x6C\x6C\x54\x6F\x70": _0xc3d6x9['offset']()['top'] - 138
        }, 800, 'swing')
    });
    _0xc3d6x10['find']('ul li a')['on']('click', function () {
        _0xc3d6x10['find']('ul li a.active')['removeClass']('active');
        _0xc3d6x1(this)['addClass']('active')
    });
    _0xc3d6x1('#faq_box a[href^="#"]')['on']('click', function () {
        if (location['pathname']['replace'](/^\//, '') == this['pathname']['replace'](/^\//, '') || location['hostname'] == this['hostname']) {
            var _0xc3d6x8 = _0xc3d6x1(this['hash']);
            _0xc3d6x8 = _0xc3d6x8['length'] ? _0xc3d6x8 : _0xc3d6x1('[name=' + this['hash']['slice'](1) + ']');
            if (_0xc3d6x8['length']) {
                _0xc3d6x1('html,body')['animate']({
                    scrollTop: _0xc3d6x8['offset']()['top'] - 185
                }, 800);
                return false
            }
        }
    });
    _0xc3d6x1('ul#cat_nav li a')['on']('click', function () {
        _0xc3d6x1('ul#cat_nav li a.active')['removeClass']('active');
        _0xc3d6x1(this)['addClass']('active')
    });
    _0xc3d6x1('.btn_map, .btn_map_in')['on']('click', function () {
        var _0xc3d6x11 = _0xc3d6x1(this);
        _0xc3d6x11['text']() == _0xc3d6x11['data']('text-swap') ? _0xc3d6x11['text'](_0xc3d6x11['data']('text-original')) : _0xc3d6x11['text'](_0xc3d6x11['data']('text-swap'));
        _0xc3d6x1('html, body')['animate']({
            scrollTop: _0xc3d6x1('body')['offset']()['top'] + 385
        }, 600)
    });

    function _0xc3d6x12() {
        _0xc3d6x1('.panel-dropdown')['removeClass']('active')
    }
    _0xc3d6x1('.panel-dropdown a')['on']('click', function (_0xc3d6x7) {
        if (_0xc3d6x1(this)['parent']()['is']('.active')) {
            _0xc3d6x12()
        } else {
            _0xc3d6x12();
            _0xc3d6x1(this)['parent']()['addClass']('active')
        };
        _0xc3d6x7['preventDefault']()
    });
    var _0xc3d6x13 = false;
    _0xc3d6x1('.panel-dropdown')['hover'](function () {
        _0xc3d6x13 = true
    }, function () {
        _0xc3d6x13 = false
    });
    _0xc3d6x1('body')['mouseup'](function () {
        if (!_0xc3d6x13) {
            _0xc3d6x12()
        }
    });
    _0xc3d6x1('.dropdown-user')['hover'](function () {
        _0xc3d6x1(this)['find']('.dropdown-menu')['stop'](true, true)['delay'](50)['fadeIn'](300)
    }, function () {
        _0xc3d6x1(this)['find']('.dropdown-menu')['stop'](true, true)['delay'](50)['fadeOut'](300)
    })
})(window['jQuery'])