<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title class="bg-warning" style="text-align: right; font-family: Vazir;direction: rtl !important;">فوانین |شرایط استفاده</title>
    @include('include.bootstrap')
    @include('include.nav-style-js')
</head>
<body style="background: #151f33;"  >
<div class="" id="nav-view">

    @include('include.navigation')
</div>

<div class="all-posts" style="margin-top: 150px">
    <div class="conatiner">
        <div class="d-flex flex-column align-items-center ">
            <div class="flex-item" style="width: 100%">
                <a href="{{url('/blog/details')}}" style="text-decoration: none"><h2 class="text-center text-white">شرایط و قوانین استفاده از خدمات ایزی بازی </h2></a>
                <h5 class="text-center py-3" > 98/07/15</h5>
                <div class="row">
                    <div class="col-11 m-auto">
                       <h2 class="text-right" style="color: #ff5c1a" >ماده 1 - تعاریف و اصطلاحات</h2>
                    </div>
                </div>
                <div class="row">
                    <div class=" col-11 m-auto">
                        <p class="py-3 post-paragraph text-right"  style="max-width: 600px;color: #f3f3f3;">
                            اصطلاحاتی که در این شرایط و قوانین به کار رفته است دارای معانی مشروح زیر است:
                        </p>
                        <p class="py-3 post-paragraph text-right"  style="max-width: 600px;color: #f3f3f3;">
                            ۱- شرکت: شرکت سبلان پایدار محتشم که نسبت به ارائه خدمات ایزی بازی اقدام می‌کند.
                        </p>
                        <p class="py-3 post-paragraph text-right"  style="max-width: 600px;color: #f3f3f3;">
                            ۱- ایزی بازی: خدمات نرم افزاری کرایه و خرید بازی ها که توسط شرکت ارائه می شود.
                        </p>
                    </div>
                </div>
                {{--<div class="row">--}}
                    {{--<div class=" m-auto">--}}
                        {{--<a href="{{url('/blog/details')}}">--}}
                            {{--<img src="{{url('img/rdr2.jpg')}}" alt="" class="post-img">--}}
                        {{--</a>--}}
                    {{--</div>--}}
                {{--</div>--}}

            </div>
        </div>
        <div class="d-flex flex-column align-items-center ">
            <div class="flex-item" style="width: 100%">
                <div class="row">
                    <div class="col-11 m-auto">
                        <h2 class="text-right" style="color: #ff5c1a" >ماده ۲ - حساب کاربری</h2>
                    </div>
                </div>
                <div class="row">
                    <div class=" col-11 m-auto">

                        <p class="py-3 post-paragraph text-right"  style="max-width: 600px;color: #f3f3f3;">
                            ۲-۱- کاربران با ثبت‌نام در اپلیکیشن ایزی بازی، همچنین با هر بار استفاده از خدمات آن، می‌پذیرند که شرایط و قوانین حاضر را به صورت کامل مطالعه کرده و آن را با اطلاع کامل از شرایط و معانی‌اش پذیرفته‌اند. این شرایط و قوانین ممکن است در طول زمان تغییر کند. استفادۀ کاربران از اپلیکیشن، پس از هر بار تغییر در شرایط و قوانین، به معنی پذیرش تغییرات مذکور است. این قوانین برای مطالعه کاربران در سایت و اپلیکیشن اسنپ در دسترس است.
                        </p>
                        <p class="py-3 post-paragraph text-right"  style="max-width: 600px;color: #f3f3f3;">
                            ۲-۲- برای استفاده از خدمات ایزی بازی لازم است که هر کاربر یک حساب کاربری در اپلیکیشن بسازد. تنها اشخاصی که بیش از ۱۸ سال سن دارند و واجد اهلیت قانونی هستند می‌توانند اقدام به ساخت حساب کاربری در اپلیکیشن کنند. کاربر مذکور برای استفاده از خدمات باید نام، نام خانوادگی، آدرس پست الکترونیکی و شماره همراه خود و کد ملی را در اپلیکیشن ایزی بازی ثبت کند.
                        </p>
                    </div>
                </div>
                {{--<div class="row">--}}
                {{--<div class=" m-auto">--}}
                {{--<a href="{{url('/blog/details')}}">--}}
                {{--<img src="{{url('img/rdr2.jpg')}}" alt="" class="post-img">--}}
                {{--</a>--}}
                {{--</div>--}}
                {{--</div>--}}

            </div>
        </div>
    </div>


</div>
@include('include.footer')
</body>
<script>
  detectMobileScreen()
  function detectMobileScreen() {

    if (window.innerWidth <= 800 && window.innerHeight <= 600){
      console.log("this is mobile screen")
      document.getElementById("nav-view").style.width = "0px !important";
      document.getElementById("nav-view").remove()
      console.log(document.getElementById("nav-view"))
      // document.getElementById("address").remove("d-none");
      // document.getElementById("address").remove("d-md-block");

      return true
    }else {
      console.log("this is Not mobile screen")

      return false
    }
  }
</script>

</html>