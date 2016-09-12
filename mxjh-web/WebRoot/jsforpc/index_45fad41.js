!function(e, t, n, o) {
    "use strict";
    function i(n, o) {
        return E === !0 ? !0 : void(f[n] && (S.before(n, p), v = 1, S.sectionName && (t.location.hash = f[n]), o ? (e(S.target).stop().scrollTop(d[n]), S.after(n, p)) : (e(S.target).stop().animate({
            scrollTop: d[n]
        },
        S.scrollSpeed, S.easing), e(S.target).promise().done(function() {
            M = !1,
            S.after(n, p)
        }))))
    }
    function s(e) {
        if (4 > e) return ! 1;
        var t, n = 20,
        o = 0,
        i = e.length - 1;
        for (e.length < 2 * n && (n = Math.floor(e.length / 2)), t = e.length - n; i >= t; i--) o += e[i];
        var s = o / n;
        for (o = 0, i = e.length - n - 1, t = e.length - 2 * n; i >= t; i--) o += e[i];
        var c = o / n;
        return s >= c ? !0 : !1
    }
    function c(e, t) {
        for (var n = f.length; n >= 0; n--)"string" == typeof e ? f[n] === e && (m = n, i(n, t)) : n === e && (m = n, i(n, t))
    }
    var u, r, a, h, l, d = [],
    f = [],
    p = [],
    g = [],
    m = 0,
    v = 1,
    y = (t.location.hash, !1),
    b = e(t).scrollTop(),
    w = !1,
    M = !1,
    T = !1,
    E = !1,
    H = [],
    D = (new Date).getTime(),
    S = {
        section: "section",
        sectionName: "section-name",
        easing: "easeOutExpo",
        scrollSpeed: 1100,
        offset: 0,
        scrollbars: !0,
        axis: "y",
        target: "html,body",
        before: function() {},
        after: function() {},
        afterResize: function() {}
    };
    e.scrollify = function(o) {
        function c(t) {
            e(S.target).stop().animate({
                scrollTop: t
            },
            S.scrollSpeed, S.easing)
        }
        function L() {
            e(S.section).each(function(n) {
                e(this).css("height", "auto").outerHeight() < e(t).height() ? (e(this).css({
                    height: e(t).height()
                }), g[n] = !1) : (e(this).css({
                    height: e(this).height()
                }), g[n] = !0)
            })
        }
        function N(n) {
            e(S.section).each(function(n) {
                d[n] = n > 0 ? parseInt(e(this).offset().top) + S.offset: parseInt(e(this).offset().top),
                f[n] = S.sectionName && e(this).data(S.sectionName) ? "#" + e(this).data(S.sectionName).replace(/ /g, "-") : "#" + (n + 1),
                p[n] = e(this),
                t.location.hash === f[n] && (m = n, y = !0)
            }),
            !0 === n && i(m, !1)
        }
        function z() {
            return b = e(t).scrollTop(),
            b > parseInt(d[m]) ? !1 : !0
        }
        function k() {
            return b = e(t).scrollTop(),
            b < parseInt(d[m]) + (p[m].height() - e(t).height()) ? !1 : !0
        }
        e.easing.easeOutExpo = function(e, t, n, o, i) {
            return t == i ? n + o: o * ( - Math.pow(2, -10 * t / i) + 1) + n
        },
        a = {
            handleMousedown: function() {
                return E === !0 ? !0 : (w = !1, void(T = !1))
            },
            handleMouseup: function() {
                return E === !0 ? !0 : (w = !0, void(T && a.calculateNearest()))
            },
            handleScroll: function() {
                return E === !0 ? !0 : (u && clearTimeout(u), void(u = setTimeout(function() {
                    return T = !0,
                    w === !1 ? !1 : (w = !1, void a.calculateNearest())
                },
                200)))
            },
            calculateNearest: function() {
                b = e(t).scrollTop();
                for (var n, o = 1,
                s = d.length,
                c = 0,
                u = Math.abs(d[0] - b); s > o; o++) n = Math.abs(d[o] - b),
                u > n && (u = n, c = o); (k() || z()) && (m = c, i(c, !1))
            },
            wheelHandler: function(e, t) {
                if (E === !0) return ! 0;
                g[m] || e.preventDefault();
                var n = (new Date).getTime();
                if (t = t || -e.originalEvent.detail / 3 || e.originalEvent.wheelDelta / 120, n - D > 1300 && (H = []), D = n, H.length >= 35 && H.shift(), H.push(Math.abs(10 * t)), M) return ! 1;
                if (0 > t) {
                    if (m < d.length - 1 && k()) {
                        if (!s(H)) return ! 1;
                        e.preventDefault(),
                        m++,
                        M = !0,
                        i(m, !1)
                    }
                } else if (t > 0 && m > 0 && z()) {
                    if (!s(H)) return ! 1;
                    e.preventDefault(),
                    m--,
                    M = !0,
                    i(m, !1)
                }
            },
            keyHandler: function(e) {
                return E === !0 ? !0 : void(38 == e.keyCode ? m > 0 && z() && (m--, i(m, !1)) : 40 == e.keyCode && m < d.length - 1 && k() && (m++, i(m, !1)))
            },
            init: function() {
                S.scrollbars ? (e(t).bind("mousedown", a.handleMousedown), e(t).bind("mouseup", a.handleMouseup), e(t).bind("scroll", a.handleScroll)) : e("body").css({
                    overflow: "hidden"
                }),
                e(n).bind("DOMMouseScroll mousewheel", a.wheelHandler),
                e(n).bind("keydown", a.keyHandler)
            }
        },
        h = {
            touches: {
                touchstart: {
                    y: -1
                },
                touchmove: {
                    y: -1
                },
                touchend: !1,
                direction: "undetermined"
            },
            options: {
                distance: 30,
                timeGap: 800,
                timeStamp: (new Date).getTime()
            },
            touchHandler: function(e) {
                if (E === !0) return ! 0;
                var t;
                if ("undefined" != typeof e && "undefined" != typeof e.touches) switch (t = e.touches[0], e.type) {
                case "touchstart":
                    h.touches.touchstart.y = t.pageY,
                    h.touches.touchmove.y = -1,
                    h.options.timeStamp = (new Date).getTime(),
                    h.touches.touchend = !1;
                case "touchmove":
                    h.touches.touchmove.y = t.pageY,
                    h.touches.touchstart.y !== h.touches.touchmove.y && (e.preventDefault(), h.options.timeStamp + h.options.timeGap < (new Date).getTime() && 0 == h.touches.touchend && (h.touches.touchend = !0, h.touches.touchstart.y > -1 && Math.abs(h.touches.touchmove.y - h.touches.touchstart.y) > h.options.distance && (h.touches.touchstart.y < h.touches.touchmove.y ? h.up() : h.down())));
                    break;
                case "touchend":
                    h.touches[e.type] === !1 && (h.touches[e.type] = !0, h.touches.touchstart.y > -1 && h.touches.touchmove.y > -1 && (Math.abs(h.touches.touchmove.y - h.touches.touchstart.y) > h.options.distance && (h.touches.touchstart.y < h.touches.touchmove.y ? h.up() : h.down()), h.touches.touchstart.y = -1))
                }
            },
            down: function() {
                m <= d.length - 1 && (k() && m < d.length - 1 ? (m++, i(m, !1)) : Math.floor(p[m].height() / e(t).height()) > v ? (c(parseInt(d[m]) + e(t).height() * v), v += 1) : c(parseInt(d[m]) + (p[m].height() - e(t).height())))
            },
            up: function() {
                m >= 0 && (z() && m > 0 ? (m--, i(m, !1)) : v > 2 ? (v -= 1, c(parseInt(d[m]) + e(t).height() * v)) : (v = 1, c(parseInt(d[m]))))
            },
            init: function() {
                n.addEventListener && (n.addEventListener("touchstart", h.touchHandler, !1), n.addEventListener("touchmove", h.touchHandler, !1), n.addEventListener("touchend", h.touchHandler, !1))
            }
        },
        l = {
            handleResize: function() {
                clearTimeout(r),
                r = setTimeout(function() {
                    L(),
                    N(!0),
                    S.afterResize()
                },
                50)
            }
        },
        S = e.extend(S, o),
        L(),
        N(!1),
        y === !1 && S.sectionName ? t.location.hash = f[0] : i(m, !1),
        a.init(),
        h.init(),
        e(t).bind("resize", l.handleResize),
        t.addEventListener && t.addEventListener("orientationchange", l.handleResize, !1)
    },
    e.scrollify.move = function(e) {
        return e === o ? !1 : void c(e, !1)
    },
    e.scrollify.instantMove = function(e) {
        return e === o ? !1 : void c(e, !0)
    },
    e.scrollify.next = function() {
        m < f.length && (m += 1, i(m, !1))
    },
    e.scrollify.previous = function() {
        m > 0 && (m -= 1, i(m, !1))
    },
    e.scrollify.instantNext = function() {
        m < f.length && (m += 1, i(m, !0))
    },
    e.scrollify.instantPrevious = function() {
        m > 0 && (m -= 1, i(m, !0))
    },
    e.scrollify.destroy = function() {
        e(S.section).each(function() {
            e(this).css("height", "auto")
        }),
        e(t).unbind("resize", l.handleResize),
        S.scrollbars && (e(t).unbind("mousedown", a.handleMousedown), e(t).unbind("mouseup", a.handleMouseup), e(t).unbind("scroll", a.handleScroll)),
        e(n).unbind("DOMMouseScroll mousewheel", a.wheelHandler),
        e(n).unbind("keydown", a.keyHandler),
        n.addEventListener && (n.removeEventListener("touchstart", h.touchHandler, !1), n.removeEventListener("touchmove", h.touchHandler, !1), n.removeEventListener("touchend", h.touchHandler, !1)),
        d = [],
        f = [],
        p = [],
        g = []
    },
    e.scrollify.update = function() {
        l.handleResize()
    },
    e.scrollify.current = function() {
        return p[m]
    },
    e.scrollify.disable = function() {
        E = !0
    },
    e.scrollify.enable = function() {
        E = !1
    },
    e.scrollify.isDisabled = function() {
        return E
    }
} (jQuery, this, document);;
nie.define("common",
function() {
    function e() {
        t()
    }
    function t() {
        {
            var e = (window.location.href, $("#share_pic").attr("data-src")),
            t = ($("#share_desc").html(), $("#share_title").html());
            i({
                fat: "#NIE-share",
                type: 6,
                defShow: [23, 22, 2],
                title: t,
                content: t,
                img: e
            })
        }
    }
    var i = nie.require("nie.util.shareV5");
    e()
});;
nie.define(function() {
    function o() {
        var o = $("#nav-box-01"),
        n = ($(".nav-box-02"), location.href.split("#"));
        e(),
        n[1] && 1 != n[1] || (o.show(), setTimeout(function() {
            o.addClass("nav-suo")
        },
        5e3))
    }
    function e() {
        n(),
        i(),
        t(),
        s(),
        c(),
        d()
    }
    function n() {
        $.scrollify({
            section: ".section",
            easing: "easeOutExpo",
            scrollSpeed: 800,
            offset: 0,
            scrollbars: !0,
            before: function(o) {
                l = o,
                a(o)
            },
            after: function() {},
            afterResize: function() {}
        })
    }
    function a(o) {
        var e = $("#nav-box-01"),
        n = $(".nav-box-02"),
        a = $(".section-05 .nav-box-02"),
        i = $(".i-arrow"),
        t = $(".section");
        1 == o ? (e.show(), setTimeout(function() {
            e.addClass("ani-out"),
            n.show()
        },
        50)) : 0 == o ? (e.show().removeClass("ani-out"), n.hide()) : (e.hide(), n.show(), o >= 4 && (n.hide(), a.show())),
        o > 0 && o % 2 == 0 ? (n.addClass("nav-light-box"), i.addClass("arrow2")) : 5 != o && (n.removeClass("nav-light-box"), i.removeClass("arrow2")),
        5 != o ? (t.removeClass("section-in"), t.eq(o).addClass("section-in"), a.removeClass("fix"), 4 == o ? i.hide() : i.show(), $("#nav2").find(".current").removeClass("current"), $("#nav2").find("a").eq(o - 1).addClass("current")) : (i.hide(), a.addClass("fix"), t.eq(4).addClass("section-in"))
    }
    function i() {
        jQuery(".slideTxtBox").slide({
            effect: "fade",
            delayTime: 1e3,
            defaultIndex: 0,
            pnLoop: !0,
            trigger: "click"
        })
    }
    function t() {
        $(".btn-back").click(function() {
            $.scrollify.move("#1")
        }),
        $(".nav-games-box a").click(function() {
            var o = $(this).index() + 2;
            $.scrollify.move("#" + o)
        }),
        $(".nav-box-02,.nav-box-01").hover(function() {
            $(this).hasClass("nav-suo") && $(".nav-box").removeClass("nav-suo")
        },
        function() {
            $(this).hasClass("nav-suo") || $(".nav-box").addClass("nav-suo")
        }),
        $(".i-arrow").click(function() {
            $.scrollify.next()
        })
    }
    function s() {
        $(".btn-video").click(function() {
            var o = $(this).data("url");
            $("#mask").show().animate({
                opacity: "0.85"
            }),
            r({
                fat: "#videoShow",
                width: "800",
                height: "450",
                movieUrl: o.replace(/\.(flv|f4v)/, ".mp4"),
                vtype: "",
                autoPlay: !0
            }),
            $("#video-box").show()
        }),
        $(".JpopClose").click(function() {
            $("#mask").hide(),
            $(".JpopBox").hide(),
            $("#videoShow").html("")
        })
    }
    function c() {
        var o, e = $("#mask"),
        n = $(".picture-box"),
        a = $("#pics a"),
        i = $(".picture-box-prev"),
        t = $(".picture-box-next");
        a.click(function() {
            o = 1 * $(this).attr("data-index"),
            e.show().animate({
                opacity: "0.85"
            }),
            n.find("img").attr("src", $(this).attr("data-big")),
            n.show()
        }),
        $(".btn-close").click(function() {
            e.hide().animate({
                opacity: "0"
            }),
            n.hide(),
            $("#video-box").hide(),
            $("#video2-box").hide(),
            $(".pop-box").hide()
        }),
        t.click(function() {
            var e;
            o == a.length - 1 ? o = 0 : o++,
            e =  a.eq(o).attr("data-big"),
            n.find("img").attr("src", e)
        }),
        i.click(function() {
            var e;
            0 == o ? o = a.length - 1 : o--,
            e =  a.eq(o).attr("data-big"),
            n.find("img").attr("src", e)
        })
    }
    function d() {
        $(".section").mousemove(function(o) {
            var e = o.pageX / 30,
            n = o.pageY / 30;
            $(".leaf").css({
                transform: "translate3d(" + e + "px, " + n + "px, 0px)",
                "-webkit-transform": "translate3d(" + e + "px, " + n + "px, 0px)",
                "-moz-transform": "translate3d(" + e + "px, " + n + "px, 0px)",
                "-o-transform": "translate3d(" + e + "px, " + n + "px, 0px)"
            })
        })
    }
    var r = nie.require("nie.util.videoV2"),
    l = 0;
    o(),
    $(".qrcode_wx_box").hover(function() {
        $(".code_show").show()
    },
    function() {
        $(".code_show").hide()
    })
}),
nie.define("download",
function() {
    nie.require("nie.util.niedownload");
    NieDownload.create({
        wrapper: $("#nie-download"),
        enableAndroid: !0,
        enableIos: !0
    }),
    NieDownload.create({
        wrapper: $("#nie-download02"),
        enableAndroid: !0,
        enableIos: !0
    }),
    NieDownload.create({
        wrapper: $("#nie-download-com"),
        enableAndroid: !0,
        enableIos: !0
    })
}),
$(".tips_download").mouseenter(function() {
    $(".tips_download").css("display", "none"),
    $("#nie-download-com").css("display", "block"),
    "Microsoft Internet Explorer" == navigator.appName && "MSIE7.0" == navigator.appVersion.split(";")[1].replace(/[ ]/g, "") ? $("#nie-download-com").stop().animate({
        right: -95
    },
    200) : $("#nie-download-com").stop().animate({
        right: 0
    },
    200)
}),
$("#nie-download-com").mouseleave(function() {
    $(".tips_download").css("display", "block"),
    $("#nie-download-com").css("display", "none"),
    $("#nie-download-com").stop().animate({
        right: -280
    },
    200)
});;
nie.define("Yuyue",
function() {
    function o() {
        e()
    }
    function e() {
        u.click(function() {
            i("pop-yuyue")
        }),
        s.click(function() {
            t("pop-yuyue"),
            t("pop-download")
        }),
        $("#choose-box label").click(function() {
            var o = $(this);
            o.addClass("checked").siblings().removeClass("checked"),
            v = o.attr("data-val")
        }),
        d.click(function() {
            var o = $.trim(f.val());
            return "" == v || void 0 == v ? void alert("\u8bf7\u9009\u62e9\u624b\u673a\u7cfb\u7edf") : o && "\u5728\u6b64\u8f93\u5165\u624b\u673a\u53f7\u7801" != o ? a(o) ? void("android" == v ? (y = "android", c(o, y)) : "ios" == v && (y = "ios", c(o, y))) : (alert("\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"), void n()) : void alert("\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a")
        }),
        r()
    }
    function n() {
        $("#choose-box label").removeClass("checked"),
        v = "",
        f.val("\u5728\u6b64\u8f93\u5165\u624b\u673a\u53f7\u7801").css({
            color: "#9f9f9f"
        })
    }
    function c(o, e) {
        l("/appoint", {
            mobile: o,
            os: e
        },
        function(o) {
            switch (o.status) {
            case ! 0 : alert("\u606d\u559c\u60a8\uff0c\u9884\u7ea6\u6210\u529f\uff01");
                break;
            case "103":
                alert("\u53c2\u6570\u683c\u5f0f\u4e0d\u6b63\u786e");
                break;
            case "201":
                alert("\u5df2\u7ecf\u9884\u7ea6\uff0c\u8bf7\u52ff\u91cd\u590d\u9884\u7ea6");
                break;
            default:
                alert(o.msg)
            }
            n()
        })
    }
    function a(o) {
        return /^(13|14|15|17|18|19)\d{9}$/.test(o)
    }
    function i(o) {
        $("#NIE-overlayer,#" + o).show()
    }
    function t(o) {
        $("#NIE-overlayer,#" + o).hide(),
        $(".close").click(function() {
            $("#NIE-overlayer,#" + o).hide()
        })
    }
    function l(o, e, n) {
        $.ajax({
            url: p + o,
            type: "GET",
            dataType: "jsonp",
            data: e,
            jsonp: "callback",
            success: function(o, e) {
                n && n(o, e)
            },
            error: function() {
                alert("\u670d\u52a1\u5668\u51fa\u9519\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5")
            }
        })
    }
    function r() {
        $(".Jdownload").click(function() {
            i("pop-download")
        })
    }
    var u = $("#yuyue-btn"),
    s = $(".close"),
    d = $("#yuyue"),
    f = $("#phonenum"),
    p = "http://dora.webcgi.163.com/api/61_77_2016_01_14",
    v = "",
    y = "";
    o()
});;
nie.define("Gift",
function() {
    function t() {
        function t(t) {
            $("#NIE-overlayer,#" + t).show()
        }
        function i(t) {
            $("#NIE-overlayer,#" + t).hide(),
            $(".gift-close").click(function() {
                $("#NIE-overlayer,#" + t).hide()
            })
        }
        function c() {
            l.attr("src", "http://dora.webcgi.163.com/api/61_243_2016_06_06/get_cdkey_auth_img?" + Math.random())
        }
        function o() {
            n.val("\u8f93\u5165\u624b\u673a\u53f7\u7801").css({
                color: "#9f9f9f"
            })
        }
        function e() {
            f.val("\u8f93\u5165\u9a8c\u8bc1\u7801").css({
                color: "#9f9f9f"
            })
        }
        var a = $(".pop-gift"),
        n = $("#giftPhone"),
        f = $("#code-num"),
        l = $(".code");
        $(".gift_con,.tips_gift").bind("click",
        function() {
            t("pop-gift")
        }),
        $(".gift-close").click(function() {
            i("pop-gift")
        }),
        a.find(".code").bind("click",
        function() {
            c()
        }),
        c(),
        $("#btn-gift").bind("click",
        function() {
            var t = n.val(),
            i = f.val(),
            a = $.trim(n.val()),
            i = $.trim(f.val());
            "" == a ? alert("\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a") : /^1(3|4|5|7|8)\d{9}$/.test(t) ? "" == i || "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801" == i ? (alert("\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"), e()) : $.ajax({
                url: "http://dora.webcgi.163.com/api/61_243_2016_06_06/get_cdkey?mobile=" + a + "&img_authcode=" + i,
                type: "get",
                dataType: "jsonp",
                success: function(t) {
                    c(),
                    1 == t.status ? ($("#gift_success").show(), $(".gift-box").hide()) : 305 == t.status ? (o(), e(), alert("\u60a8\u5df2\u7ecf\u9886\u53d6\u4e86\u793c\u5305\u7801\uff0c\u8bf7\u52ff\u91cd\u590d\u9886\u53d6\uff01")) : 103 == t.status ? (f.val(""), alert("\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801")) : 301 == t.status ? (o(), e(), alert("\u6fc0\u6d3b\u7801\u5df2\u7ecf\u53d1\u5149")) : 502 == t.status ? (f.val(""), alert("\u56fe\u7247\u9a8c\u8bc1\u7801\u9519\u8bef")) : alert(t.msg)
                }
            }) : (alert("\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"), o())
        })
    }
    t()
});
