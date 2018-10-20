define(['config'], function () {
    require(['jquery'], function ($) {
        // http://10.31.162.112/wandoudongzhu/php/details.php
        //放大镜
        ! function () {
            $.ajax({
                url: 'http://10.31.162.112/js/wandoudongzhu1/php/details.php',
                data: {
                    sid: location.search.substring(1).split('=')[1]
                },
                dataType: 'json'
            }).done(function (data) {
                var $strs = '<img src="' + data[0].f_url.split(',')[0] + '" sid="' + data[0].f_sid + '">' +
                    '<b class="shadow" style="top: 155px; left: 11.5px; display: none;"></b>';
                $('.big-box').html($strs);
                var $strb =
                    '<img src="' + data[0].f_url.split(',')[0] + '" id="showImgBig" style="top: -310px; left: -23px;">';
                $('#showDetails').html($strb);
                var $lis = '';
                $.each(data[0].f_url.split(',').slice(1), function (index, value) {
                    $lis += '<li class="little-img-item" >' + '<img alt="Creer Beaute 克丽贝蒂 凡尔赛深层保湿面膜 红色 1片" src="' + value + '">' + '</li>';
                    $('.litimgUl').html($lis);
                });

                $contentstr = "";
                $contentstr += '<div class="goods-slogan">' + data[0].f_title + '</div>' +
                    '<div class="goods-name">' +
                    '<h1 class="name-item">' + data[0].f_content + '</h1>' +
                    '</div>' +
                    '<div class="goods-sell-point">' + data[0].f_details + '</div>';

                $('.product-info-right .content').html($contentstr);

                $pricestr = "";
                $pricestr += '<span class="">价格</span>' +
                    '<span class="unit-icon">¥</span>' +
                    '<span class="final-price">' + data[0].f_price + '</span>' +
                    '<span class="market-price">参考价' + data[0].f_re_price + '元</span>';
                $('.product-info-right .goods-price').html($pricestr);
                secnav()
            });

            function secnav() {
                $(document).ready(function () {
                    $sf = $('.shadow');
                    $bf = $('#showDetails')

                    $spic = $('.big-box');
                    $bpic = $('#showImgBig');

                    $spic.hover(function () {
                        $sf.css('display', 'block');
                        $bf.css('display', 'block');

                        //3.1:小方的尺寸
                        $sf.width($(this).width() * $bf.width() / $bpic.width());
                        $sf.height($(this).height() * $bf.height() / $bpic.height());

                        var $bili = $bpic.width() / $spic.width();

                        //3.2鼠标在小方里面移动
                        $spic.on('mousemove', function (ev) {
                            var $left = ev.pageX - $('.big-box').offset().left - $sf.width() / 2;
                            var $top = ev.pageY - $('.big-box').offset().top - $sf.height() / 2;
                            if ($left <= 0) {
                                $left = 0;
                            } else if ($left >= $spic.width() - $sf.width()) {
                                $left = $spic.width() - $sf.width();
                            }


                            if ($top <= 0) {
                                $top = 0;
                            } else if ($top >= $spic.height() - $sf.height()) {
                                $top = $spic.height() - $sf.height();
                            }


                            $sf.css({
                                left: $left,
                                top: $top
                            });

                            $bpic.css({
                                left: -$bili * $left,
                                top: -$bili * $top
                            })
                        });
                    }, function () {
                        $sf.css('display', 'none');
                        $bf.css('display', 'none');
                    });

                    var $li = $('.litimgUl .little-img-item');
                    var $ul = $('.litimgUl');
                    var $liwidth = $li.eq(0).innerWidth();

                    $ul.width($li.size() * $liwidth);

                    $li.on('click', function () {
                        $(this).addClass('cur').siblings('li').removeClass('cur');
                        var url = $(this).find('img').attr('src');
                        $spic.find('img').attr('src', url);
                        $bpic.attr('src', url);
                    });

                    var $num = 4;
                    if ($li.length <= 4) {
                        $('.scrollleft ,.scrollright').addClass('scrollBtn');
                    }
                    $('.scrollRight').on('click', function () {
                        if ($num < $li.size()) {
                            $num++;
                            $('.scrollleft').css("color", "#333");
                            if ($num == $li.size()) {
                                $('.scrollright').addClass('scrollBtn');
                            }
                            $ul.animate({
                                left: -($num - 4) * $liwidth
                            });

                        }
                    });

                    $('.scrollleft').on('click', function () {
                        if ($num > 4) {
                            $num--;
                            $('.scrollright').css('color', '#333');
                            if ($num == 4) {
                                $('.scrollleft').css('color', '#fff');
                            }
                            $ul.animate({
                                left: -($num - 4) * $liwidth
                            });
                        }

                    });
                })
            }
        }();
        //首页跳入登陆注册页面
        !(function () {
            $(".x-close").on("click", function () {
                $(".x-passport").hide();
            });
        })();
        //添加cookie设置登录注册之后的顶部显示
        ! function () {
            function addCookie(key, value, day) {
                var date = new Date();
                date.setDate(date.getDate() + day);
                document.cookie = key + '=' + encodeURI(value) + ';expires=' + date;
            }

            function getCookie(key) {
                var str = decodeURI(document.cookie);
                var arr = str.split('; ');
                for (var i = 0; i < arr.length; i++) {
                    var arr1 = arr[i].split('=');
                    if (arr1[0] == key) {
                        return arr1[1];
                    }
                }
            }

            function delCookie(key, value) {
                addCookie(key, value, -1);
            }

            $(function () {
                if (getCookie('UserName')) {
                    $('.top-nav-auth').hide();
                    $('.top-nav-auth-menu').show();
                }
                $('.top-nav-auth-menu .quit').on('click', function () {
                    delCookie('UserName', '', -1);
                    $('.top-nav-auth-menu').hide();
                    $('.top-nav-auth').show();
                });
            });
        }();

        //购物车
        ! function () {
            //添加cookie的函数
            function addCookie(key, value, day) {
                var date = new Date(); //创建日期对象
                date.setDate(date.getDate() + day); //过期时间：获取当前的日期+天数，设置给date
                document.cookie = key + '=' + encodeURI(value) + ';expires=' + date; //添加cookie，设置过期时间
            }
            //得到cookie
            function getCookie(key) {
                var str = decodeURI(document.cookie);
                var arr = str.split('; ');
                for (var i = 0; i < arr.length; i++) {
                    var arr1 = arr[i].split('=');
                    if (arr1[0] == key) {
                        return arr1[1];
                    }
                }
            }
            //删除cookie

            function delCookie(key) {
                addCookie(key, '', -1); //添加的函数,将时间设置为过去时间
            }
            //从json中取出数据
            //商品加入购物车
            var sidarr = []; // 编号 数组
            var numarr = []; // 数量 数组
            //获取cookie转换成数组
            function getCookievalue() {
                if (getCookie('cartsid') && getCookie('cartnum')) {
                    sidarr = getCookie('cartsid').split(',');
                    numarr = getCookie('cartnum').split(',');
                }
            }

            $('#addCart').on('click', function () {
                var sid = $(this).parents('.product-info').find('.big-box img').attr('sid');
                //alert (sid);
                getCookievalue();
                if ($.inArray(sid, sidarr) != -1) { //存在
                    var num = parseInt(numarr[$.inArray(sid, sidarr)]) + parseInt($('.goods-count-num').val());
                    numarr[$.inArray(sid, sidarr)] = num;
                    addCookie('cartnum', numarr, 30);
                } else { //不存在
                    sidarr.push(sid);
                    addCookie('cartsid', sidarr, 30);
                    numarr.push($('.goods-count-num').val());
                    addCookie('cartnum', numarr, 30);
                }
            });
        }();



    });

});