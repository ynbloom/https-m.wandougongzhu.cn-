define(['config'], function ($) {
    require(['jquery'], function ($, $jv) {
        ! function () {
            function addCookie(key, value, day) {
                var date = new Date(); //创建日期对象
                date.setDate(date.getDate() + day); //过期时间：获取当前的日期+天数，设置给date
                document.cookie = key + '=' + encodeURI(value) + ';expires=' + date; //添加cookie，设置过期时间
            }

            function delCookie(key, value) {
                addCookie(key, value, -1); //添加的函数,将时间设置为过去时间
            }

            $('.submit-btn-log').on('click', function () {
                var $phone = $('x-phone').val();
                var $password = $('x-pwd').val();
                $.ajax({
                    type: 'post',
                    url: 'http://10.31.162.112/wandoudongzhu/php/login.php',
                    data: { //将用户名和密码传输给后端
                        name: $phone,
                        pass: $password
                    },
                    success: function (data) { //请求成功，接收后端返回的值
                        if (!data) { //用户名或者密码错误
                            $('.error').html('用户名或者密码错误');
                            $('.x-pwd').val('');
                        } else { //成功,存cookie,跳转到首页
                            addCookie('UserName', $phone, 7);
                            window.location.href="index.html";
                        }
                    }
                })
            });
        }();
    })

});