define(["config"], function () {
  require(["jquery"], function ($) {
    //轮播图
    !(function () {
      var index = 0;
      var picli = $("#slider li");
      $("#slidernext").click(right);

      function right() {
        index++;
        if (index == picli.length) {
          index = 0;
        }
        picli
          .eq(index)
          .fadeIn()
          .siblings()
          .fadeOut();
        $(".dot-box .dot-item")
          .eq(index)
          .addClass("dot-item-current")
          .siblings()
          .removeClass("dot-item-current");
      }
      $("#sliderpre").click(function () {
        index--;
        if (index < 0) {
          index = picli.length - 1;
        }
        picli
          .eq(index)
          .fadeIn()
          .siblings()
          .fadeOut();
        $(".dot-box .dot-item")
          .eq(index)
          .addClass("dot-item-current")
          .siblings()
          .removeClass("dot-item-current");
      });
      btns = $(".dot-box .dot-item");
      for (var i = 0; i < btns.length; i++) {
        btns.eq(i).attr("index", i);
        btns.eq(i).mouseenter(fn);
      }

      function fn() {
        var index = $(this).attr("index");
        picli
          .eq(index)
          .fadeIn()
          .siblings()
          .fadeOut();
        $(this)
          .addClass("dot-item-current")
          .siblings()
          .removeClass("dot-item-current");
      }
      var timeid = setInterval(function () {
        right();
      }, 3000);
      $("#slider").mouseleave(function () {
        timeid = setInterval(function () {
          right();
        }, 3000);
      });
      $("#slider").mouseenter(function () {
        clearInterval(timeid);
      });
    })();
    //回到顶部
    !(function () {
      $(".back-to-top-js").on("click", function () {
        $("html,body").animate({
          scrollTop: 0
        });
      });
    })();
    //搜索框联想输入
    ! function () {
      var $search = $(".search-write");
      var $oul = $(".search-ul");
      //2.将从jsonp里面获取到的数据，追加在ul的li里面
      //首先看有没有得到数据
      function taobao(data) {
        console.log(data.s);
        var taobaoarr = data.s;
        var $htmlstr = "";
        if (taobaoarr.length >= 6) {
          for (var i = 0; i < 6; i++) {
            $htmlstr += '<li><a href="https://uland.taobao.com/sem/tbsearch?refpid=mm_26632258_3504122_32538762&clk1=&keyword=' + taobaoarr[i] + '&page=0">' + taobaoarr[i] + '</a></li>';
          }
        } else {
          for (var value of taobaoarr) {
            $htmlstr += '<li><a href="https://uland.taobao.com/sem/tbsearch?refpid=mm_26632258_3504122_32538762&clk1=&keyword=' + value + '&page=0">' + value + '</a></li>';
          }
        }
        $oul.html($htmlstr);
      }

      $search.oninput = function () {
        //1.我们需要创建JavaScript标签
        // JSONP的原理：通过script标签引入一个js文件，这个js文件载入成功后会执行我们在url参数中指定的函数，
        // 并且会把我们需要的json数据作为参数传入。
        var oscript = document.createElement("script");
        oscript.src = 'https://suggest.taobao.com/sug?code=utf-8&q=' + this.value + '&_ksTS=1536838545251_1996&callback=taobao';
        document.body.appendChild(oscript); //追加在页面的最后 
      }
    }();
    //带箭头的商品播放
    !(function () {
      $(".banner1 .c-goods-n-next").click(function () {
        nextscroll();
      });

      function nextscroll() {
        var vcon = $(".banner1-box ");

        var offset = ($(".banner1-box .c-goods-n-item").width()) * -1;

        vcon.stop().animate({
          left: offset
        }, "slow", function () {
          var firstItem = $(".banner1-box .c-goods-n-item").first();

          vcon.find(".banner1-box").append(firstItem);

          $(this).css("left", "0px");

          circle();
        });
      }

      function circle() {
        var currentItem = $(".banner1-box .c-goods-n-item").first();

        var currentIndex = currentItem.attr("index");

        $(".circle li").removeClass("circle-cur");

        $(".circle li")
          .eq(currentIndex)
          .addClass("circle-cur");
      }

      $(".banner1 .c-goods-n-pre").click(function () {
        var vcon = $(".banner1-box ");

        var offset = $(".banner1-box .c-goods-n-item").width() * -1;

        var lastItem = $(".banner1-box .c-goods-n-item").last();

        vcon.find(".banner1-box.c-goods-n-item").prepend(lastItem);

        vcon.css("left", offset);

        vcon.animate({
          left: "0px"
        }, "slow", function () {
          circle();
        });
      });
    })();

    !(function () {
      $(".banner2 .c-goods-n-next").click(function () {
        nextscroll();
      });

      function nextscroll() {
        var vcon = $(".banner2-box ");

        var offset = $(".banner2-box .c-goods-n-item").width() * -1;

        vcon.stop().animate({
          left: offset
        }, "slow", function () {
          var firstItem = $(".banner2-box .c-goods-n-item").first();

          vcon.find(".banner2-box").append(firstItem);

          $(this).css("left", "0px");

          circle();
        });
      }
      //第二列
      function circle() {
        var currentItem = $(".banner2-box .c-goods-n-item").first();

        var currentIndex = currentItem.attr("index");

        $(".circle li").removeClass("circle-cur");

        $(".circle li")
          .eq(currentIndex)
          .addClass("circle-cur");
      }

      $(".banner2 .c-goods-n-pre").click(function () {
        var vcon = $(".banner2-box ");

        var offset = $(".banner2-box .c-goods-n-item").width() * -1;

        var lastItem = $(".banner2-box .c-goods-n-item").last();

        vcon.find(".banner2-box.c-goods-n-item").prepend(lastItem);

        vcon.css("left", offset);

        vcon.animate({
          left: "0px"
        }, "slow", function () {
          circle();
        });
      });
    })();
    //点击侧边栏进入购物车
    ! function () {
      $('.to-cart-js').on('click', function () {
        window.location.href = "cart.html";
      });
    }();

    //倒计时效果
    !(function () {
      var intDiff = parseInt(600000); //倒计时总秒数量

      function timer(intDiff) {
        window.setInterval(function () {
          var day = 0,
            hour = 0,
            minute = 0,
            second = 0; //时间默认值
          if (intDiff > 0) {
            day = Math.floor(intDiff / (60 * 60 * 24));
            hour = Math.floor(intDiff / (60 * 60)) - day * 24;
            minute = Math.floor(intDiff / 60) - day * 24 * 60 - hour * 60;
            second =
              Math.floor(intDiff) -
              day * 24 * 60 * 60 -
              hour * 60 * 60 -
              minute * 60;
          }
          if (minute <= 9) minute = "0" + minute;
          if (second <= 9) second = "0" + second;
          $("#hour_show").html(hour);
          $("#minute_show").html(minute);
          $("#second_show").html(second);
          intDiff--;
        }, 1000);
      }
      $(function () {
        timer(intDiff);
      });
    })();
    //固定导航栏
    !(function () {
      $(window).on("scroll", function () {
        var $scrollTop = $(window).scrollTop();
        if ($scrollTop >= 234) {
          $(".fixed").css({
            position: "fixed",
            top: 0,
            left: 0,
            width: "100%",
            "z-index": 9,
            background: "#fff",
            height: "48px",
            "box-sizing": "border-box",
            "padding-top": "5px"
          });
          $(".fixed .fixed-search-bar").css("display", "block");
          $(".fixed .main-cats").css("display", "none");
          $(".fixed .fixed-logo").css("display", "block");
        } else if ($scrollTop < 134) {
          $('#mainNav').css({
            'width': '100%',
            'height': 38,
            'background': '#ffffff',
            'position': 'relative',
            'box-shadow': '0 4px 4px rgba(0, 0, 0, 0.14)',
            'z-index': 2,
          })
          $('.main-wrap').css('overflow', 'visible');
          $('.main-cats').css('display', 'block');
          $(".fixed .fixed-search-bar").css("display", "none");
          $(".fixed .main-tabs").css("display", "block");
          $(".fixed .fixed-logo").css("display", "none");
        }
      });
    })();
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

    //登陆之后点击我的订单跳出窗口
    !function(){
    var $order=$('.app-order-guide-box');
    $('.order').on('click',function(){
      $order.show();
    })
    }();
    //楼梯效果
    ! function () {
      var $louti = $('#loutinav');
      var $loutili = $('#loutinav li');
      var $louceng = $('.c-item .louti');
      $(window).on('scroll', function () {
        var $scrolltop = $(window).scrollTop();
        if ($scrolltop >= 500) {
          $louti.show();
        } else {
          $louti.hide();
        }
        $louceng.each(function (index, element) {
          var $top = $louceng.eq(index).offset().top + $(this).innerHeight() / 2;
          if ($top > $scrolltop) {
            $loutili.removeClass('active');
            $loutili.eq($(this).index()).addClass('active');
            return false;
          }
        });
      });
      $loutili.on('click', function () {
        $(this).addClass('active').siblings('li').removeClass('active');
        var $top = $louceng.eq($(this).index()).offset().top;
        $('html,body').animate({
          scrollTop: $top
        });
      });
    }();

    //数据渲染--美妆馆
    !(function () {
      $beauty = $(".beauty");
      $.ajax({
        type: "GET",
        url: "http://10.31.162.112/js/wandoudongzhu1/php/beauty.php",
        dataType: "json",
        success: function (data) {
          $htmlstr = "";
          $htmlstr += '<div class="c-cornfield-banner" style="position:relative;background: url(https://ossimg.wandougongzhu.cn/a97c6bd9ad68c30d9a09bfa2e2a8115b.png@900w_4000h_1l_1wh_1pr.jpg) no-repeat;background-size: cover;background-position: center;">' +
            '<a href="#" class="c-cornfield-link">' +
            '</a>' +
            '</div>';
          for ($obj of data) {
            $htmlstr +=
              '<a href="details.html" class="c-cornfield-goods margin-right-bottom">' +
              '<div class="c-cornfield-goods-img-box">' +
              '<img src="' +
              $obj.url +
              '" sid="' +
              $obj.sid +
              '">' +
              "</div>" +
              '<div class="c-cornfield-goods-slogan">' +
              $obj.title +
              "</div>" +
              '<div class="c-cornfield-goods-name">' +
              $obj.content +
              "</div>" +
              '<div class="c-cornfield-goods-price">' +
              "￥" +
              $obj.price +
              "</div>" +
              "</a>";
          }
          $beauty.html($htmlstr);
        }
      });
    })();
    //时尚馆
    ! function () {
      $.ajax({
        type: 'GET',
        url: 'http://10.31.162.112/wandoudongzhu/php/fashon.php',
        dataType: 'json'
      }).done(function (data) {
        $htmlfashon = "";
        $htmlfashon += '<div class="c-cornfield-banner" style="position:relative;background: url(https://ossimg.wandougongzhu.cn/3f94de589a98d521ee54344286ce37eb.png@900w_4000h_1l_1wh_1pr.jpg) no-repeat;background-size: cover;background-position: center;">' +
          '<a href="#" class="c-cornfield-link">' +
          '</a>' +
          '</div>';
        $.each(data, function (index, value) {
          $htmlfashon +=
            '<a href="details.html?sid=' + value.f_sid + '" class="c-cornfield-goods margin-right-bottom">' +
            '<div class="c-cornfield-goods-img-box">' +
            '<img src="' +
            value.f_url.split(',')[0] +
            '">' +
            "</div>" +
            '<div class="c-cornfield-goods-slogan">' +
            value.f_title +
            "</div>" +
            '<div class="c-cornfield-goods-name">' +
            value.f_content +
            "</div>" +
            '<div class="c-cornfield-goods-price">' +
            "￥" +
            value.f_price +
            "</div>" +
            "</a>";
        });
        $('.fashon').html($htmlfashon);
      });
    }();

    //食品馆
    ! function () {
      $food = $('.food');
      $.ajax({
        type: 'GET',
        url: 'http://10.31.162.112/js/wandoudongzhu1/php/food.php',
        dataType: 'json',

      }).done(function (data) {
        $htmlfood = "";
        $htmlfood += '<div class="c-cornfield-banner" style="position:relative;background: url(https://ossimg.wandougongzhu.cn/79ab1b5ecfb1706971b9f043f093cfab.jpg@900w_4000h_1l_1wh_1pr.jpg) no-repeat;background-size: cover;background-position: center;">' +
          '<a href="#" class="c-cornfield-link">' +
          '</a>' +
          '</div>';
        for ($obj of data) {
          $htmlfood +=
            '<a href="details.html" class="c-cornfield-goods margin-right-bottom">' +
            '<div class="c-cornfield-goods-img-box">' +
            '<img src="' +
            $obj.food_url +
            '" sid="' +
            $obj.food_sid +
            '">' +
            "</div>" +
            '<div class="c-cornfield-goods-slogan">' +
            $obj.food_title +
            "</div>" +
            '<div class="c-cornfield-goods-name">' +
            $obj.food_content +
            "</div>" +
            '<div class="c-cornfield-goods-price">' +
            "￥" +
            $obj.food_price +
            "</div>" +
            "</a>";
        }
        $food.html($htmlfood);
      });
    }();
    //精选品牌渲染
    ! function () {
      $.ajax({
        url: 'http://10.31.162.112/wandoudongzhu/php/brand.php',
        type: 'GET',
        dataType: 'json'
      }).done(function (data) {
        console.log(data);
        $brandstr = "";
        $.each(data, function (index, value) {
          $brandstr += '<a href="#" class="c-brand-two-item">' +
            '<div class="c-brand-two-img-box">' +
            '<img src="' + value.url + '" alt="">' +
            '</div>' +
            '<div class="c-brand-two-info-box">' +
            '<img src="' + value.logo + '" alt="" class="c-brand-two-logo">' +
            '<div class="c-brand-two-name">' +
            '<p>' + value.title + '</p>' +
            '<p>' + value.content + '</p>' +
            '</div>' +
            '<div class="go-brand">进店看看</div>' +
            '</div>' +
            '</a>'
        })
        $('.c-brand-two').html($brandstr);
      })
    }();
    //猜你喜欢数据渲染
    ! function () {
      $.ajax({
        type: 'GET',
        url: 'http://10.31.162.112/wandoudongzhu/php/guesslove.php',
        dataType: 'json'
      }).done(function (data) {
        $str = "";
        $.each(data, function (index, value) {
          $str += '<div class="c-item c-goods-two">' +
            '<a href="#">' +
            '<div class="img-box">' +
            '<img src="' + value.url + '" alt="ROHTO 乐敦 CC美容液VC渗透美白淡斑精华 20ML">' +
            '<div class="c-goods-two-corner-left-img">' +
            '<img src="' + value.pic + '">' +
            '</div>' +
            '</div>' +
            '<div class="c-goods-two-slogan-box">' +
            value.title + '</div>' +
            '<div class="goods-name">' +
            '<div><span class="c-goods-two-pop-tag" style="color: rgb(244, 83, 83);">' +
            value.activity + '</span>' +
            value.content + '</div>' +
            '</div>' +
            '<div class="price">' +
            '<span>' +
            '￥' + value.price + '</span>' +
            '</div>' +
            '</a>' +
            '</div>'
        });
        $('.c-goods-list').html($str);
      });
    }();

  });
});