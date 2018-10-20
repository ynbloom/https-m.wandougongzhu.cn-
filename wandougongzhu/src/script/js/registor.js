define(['config'], function () {
    require(['jquery', 'jqueryvalidate'], function ($, $jv) {
        ! function () {
            $('#form1').validate({
                rules: {
                    phone: {
                        required: true,
                        digits: true,
                        rangelength: [11, 11],
                        remote: { //将前端的phone给后端
                            url: "http://10.31.162.112/wandoudongzhu/php/reg.php",
                            type: "post"
                        }
                    },
                    pwd: {
                        required: true,
                        rangelength: [6, 20]
                    },
                    confirm_pwd: {
                        required: true,
                        equalTo: '.x-pwd'
                    }
                },
                messages: {
                    phone: {
                        required: '请输入手机号码',
                        digits: '必须是整数',
                        rangelength: '号码输入不正确',
                        remote: '手机号已存在'
                    },
                    pwd: {
                        required: '请输入密码',
                        rangelength: '密码长度必须介于6 到 20位之间'

                    },
                    confirm_pwd: {
                        required: '请再次输入密码',
                        equalTo: '两次密码输入不一致'
                    }
                }
            });
            $.validator.setDefaults({
                success: function (label) {
                    label.text('√').css('color', 'green').addClass('valid');
                }
            });
        }();
    })

});