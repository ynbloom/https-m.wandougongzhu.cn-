define(['config'], function() {
    require(['jquery'],function($){
      setInterval(function(){
        var $slider=$('.slider');
        $.ajax({
          type:'GET',
          url:'http://10.31.162.112/js/wandoudongzhu1/php/getdata.php',
          dataType:'json',
          success:function(data){
            $slider.empty();
            var htmlstr='<ul class="slider-box clearfix"';
            for(var obj of data){
              htmlstr+=`<li class="slider-item">
              <a href="#">
              <img src="${obj.url}" sid="${obj.sid}">
              </a>
              </li>`;
            }
            htmlstr+="</ul>";
            $slider.html(htmlstr);
            console.log( $slider.html(htmlstr)); 
          }
        });
      },3000)
      
    });
  
});