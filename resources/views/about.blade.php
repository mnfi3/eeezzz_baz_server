<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title class="bg-warning" style="text-align: right; font-family: Vazir;direction: rtl !important;">ایزی بازی |درباره ما</title>
    @include('include.bootstrap')
    @include('include.nav-style-js')
</head>
<body style="background: #151f33;"  >
<div class="" id="nav-view">

    @include('include.navigation')
</div>

<div class="all-posts" style="margin-top: 50px">
    <div class="conatiner">
        <div class="d-flex flex-column align-items-center ">
            <div class="flex-item" style="width: 100%">
                <div class="row">
                    <div class=" m-auto">
                        <a href="{{url('/blog/details')}}">
                            <img src="{{url('img/logo.png')}}" alt="" style="max-width: 250px;max-height: 250px" class="post-img">
                        </a>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-11 m-auto">
                        <h2 class="text-center" style="color: white" >درباره ما </h2>
                    </div>
                </div>
                <div class="row my-3 px-5">
                    <div class="col-11 m-auto">
                        <h6 class="text-right" style="color: whitesmoke;line-height: 1.9"  >.شرکت سبلان پایدار در سال 1397 با یک تیم سه نفره شروع به کار نمود.در حال حاضر ایزی بازی محصول اصلی شرکت بوده که با هدف ارتقای توانایی گیمرها برای دسترسی به انواع بازی ها در قالب برنامه اندروید و آی او اس راه اندازی شده است
                            <br>
                        .در حال حاضر برنامه ایزی بازی بر روی کافه بازار و سیب اپ قابل دانلود می باشد.همچنین امکان دانلود از صفحه اول سایت نیز فراهم می باشد</h6>
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