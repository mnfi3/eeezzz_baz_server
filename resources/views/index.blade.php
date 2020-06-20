<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="enamad" content="441208"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    @include('include.page-title')
    @include('include.bootstrap')
    @include('include.nav-style-js')
</head>
<body style="background: #151f33;"  >
@include('include.navigation')
@include('include.carousel')
<div class="decription-section py-4 mt-3" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h2 class="mr-2 mt-2" style="text-align: center;font-weight: 500;color: white;font-size: 1.99rem">
                    درباره <h1 style="	background: linear-gradient(to right, #b33300 0%, #ff5c1a 100%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;"> ایزی بازی </h1>
                </h2>
                <p class=" py-3 my-2" style="font-size: 1.1rem;line-height: 2;color: #ffffff;">
                    سیستم جامع کرایه،خرید،فروش واشتراک بازی های دست دوم و یا همان <strong>ایزی بازی </strong> باهدف حذف دغدغه قیمت بالای بازی های کنسولی  در سال 98 توسط تعدادی برنامه نویس عاشق بازی پایه گذاری شد.خلاصه هدف ما اینکه گیمرها بتوانند بازی های مورد علاقه شون رو ارزان تر بازی کنن. ( حالا چه آفلاین،چه آنلاین ;) )
                </p>
            </div>

        </div>
    </div>
</div>

<div class="row mx-5" style="background: #151f33;border-top: 1px solid #ff5c1a;border-bottom: 3px solid #3d3d3d;" id="props">
    <section class="tabs col-md-10 m-auto col-sm-12 pt-5">
        <div class="container">
            <div id="tab-1" class="tab-item tab-border">
                <i class="fa fa-globe fa-5x"></i>
                <p class="hide-sm">بروز و آنلاین بازی کنید</p>
            </div>
            <div id="tab-2" class="tab-item">
                <i class="fa fa-motorcycle fa-5x"></i>
                <p class="hide-sm">در محل تحویل بگیرید</p>
            </div>
            <div id="tab-3" class="tab-item">
                <i class="fa fa-gamepad fa-5x"></i>
                <p class="hide-sm">ارزان تر بازی کنید</p>
            </div>
        </div>
    </section>
    {{--<div class="col-md-4 d-flex flex-column align-items-center justify-content-center">--}}
    {{--<h3 class="text-white text-center " style="font-weight: 500; font-size: 1.3rem"> ویژگی ها </h3>--}}
    {{--<h3 class=" text-center " style="font-weight: 500; font-size: 1.9rem;color:#d65611"> ایزی بازی  </h3>--}}
    {{--</div>--}}
</div>

<section class="tab-content" style="">
    <div class="container">
        <!-- Tab Content 1 -->
        <div id="tab-1-content" class="tab-content-item show" >
            <div class="tab-1-content-inner">
                <img src="{{url('img/online.png')}}" alt="" />
                <div>
                    <p class="text-lg" style="line-height: 3;font-size: 1.4em">
                        همراه با <strong  style="color:#d65611; font-size: 1.2rem"> ایزی بازی  </strong> فروشگاهی به بزرگی تمامی فروشندگان بازی های کنسولی در اختیار شما خواهد بود تا عناوین دلخواه تان رو انتخاب کنید
                    </p>
                </div>
            </div>
        </div>

        <!-- Tab Content 2 -->
        <div id="tab-2-content" class="tab-content-item">
            <div class="tab-2-content-inner">
                <img src="{{url('img/delivery.png')}}" alt="" />
                <div>
                    <p class="text-lg" style="line-height: 3;font-size: 1.4em">
                        همراه با <strong  style="color:#d65611; font-size: 1.2rem"> ایزی بازی  </strong>بازی هایی که سفارش دادین رو  کمتر از چند ساعت در محلتون ، به صورت <strong>رایگان </strong>تحویل بگیرید
                    </p>
                </div>
            </div>
        </div>

        <!-- Tab Content 3 -->
        <div id="tab-3-content" class="tab-content-item">
            <div class="tab-3-content-inner">
                <img src="{{url('img/cheap.png')}}" alt="" />
                <div>
                    <p class="text-lg" style="line-height: 3;font-size: 1.4em">
                        با <strong  style="color:#d65611; font-size: 1.2rem"> ایزی بازی  </strong> دیگه لازم نیس بازی که میخای رو بخری،شما میتونین اونو کرایه کنید.

                    </p>
                    <p class="text-lg" style="line-height: 2;font-size: 1.2em">
                        ;) تازه!!!واسه ماه هیج کارمزدی نداریم
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
@include('include.footer')

<!---start GOFTINO code--->
<script type="text/javascript">
  !function(){var a=window,d=document;function g(){var g=d.createElement("script"),s="https://www.goftino.com/widget/nR8q3Z",l=localStorage.getItem("goftino");g.type="text/javascript",g.async=!0,g.src=l?s+"?o="+l:s;d.getElementsByTagName("head")[0].appendChild(g);}"complete"===d.readyState?g():a.attachEvent?a.attachEvent("onload",g):a.addEventListener("load",g,!1);}();
</script>
<!---end GOFTINO code--->

<!-- ##### All Javascript Script ##### -->
<!-- jQuery-2.2.4 js -->
{{--@include('include.javascript')--}}
<script>
  const tabItems = document.querySelectorAll('.tab-item');
  const tabContentItems = document.querySelectorAll('.tab-content-item');

  // Select tab content item
  function selectItem(e) {
    // Remove all show and border classes
    removeBorder();
    removeShow();
    // Add border to current tab item
    this.classList.add('tab-border');
    // Grab content item from DOM
    const tabContentItem = document.querySelector(`#${this.id}-content`);
    // Add show class
    tabContentItem.classList.add('show');
  }

  // Remove bottom borders from all tab items
  function removeBorder() {
    tabItems.forEach(item => {
      item.classList.remove('tab-border');
    });
  }

  // Remove show class from all content items
  function removeShow() {
    tabContentItems.forEach(item => {
      item.classList.remove('show');
    });
  }

  // Listen for tab item click
  tabItems.forEach(item => {
    item.addEventListener('click', selectItem);
  });
</script>
</body>

</html>