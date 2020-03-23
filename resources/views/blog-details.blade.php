<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title class="bg-warning" style="text-align: right; font-family: Vazir;direction: rtl !important;">وبلاگ | ایزی بازی</title>
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
                <a href="{{url('/blog/details')}}" style="text-decoration: none"><h2 class="text-center text-white">Red Dead Redemption2 تازه ترین اخبار نسخه کامپیوتر   </h2></a>
                <h5 class="text-center py-3" > 98/07/15</h5>
                <div class="row">
                    <div class=" m-auto">
                        <a href="{{url('/blog/details')}}">
                            <img src="{{url('img/rdr.jpg')}}" alt="" class="post-img">
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <p class="text-center py-3 post-paragraph text-center"  style="max-width: 600px;color: #f3f3f3;">طبق جدیدترین اخبار بازی، کمپانی راک استار گیمز (Rockstar Games)، سازنده و ناشر بازی Red Dead Redemption، با همکاری کمپانی سونی محتویاتی را برای بخش Red Dead Online بازی Red Dead Redemption 2 معرفی کرد. این محتویات معرفی شده در حالت دسترسی زودهنگام ابتدا در دسترس کاربران پلی استیشن 4 قرار می‌گیرد و پس از گذشت ۳۰ روز، کاربران ایکس باکس وان هم می‌توانند از آن استفاده کنند.

                            حالت Red Dead Online در ماه نوامبر در دسترس کاربران قرار می‌گیرد و دارندگان این بازی روی پلی‌استیشن 4 می‌توانند لباس Grizzlies Outlaw، اسب عربی Red Chestnut، Alligator Skin Ranch Cutter Saddle و اسلحه ریوولور دابل اکشن High Roller را زودتر از سایرین دریافت کنند. محتویات ذکر شده در واقع محتویات روز عرضه‌ی Red Dead Online است و احتمال دارد در آینده شاهد معرفی محتویات بیشتری برای این بخش باشیم.</p>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <a href="{{url('/blog/details')}}">
                            <img src="{{url('img/rdr2.jpg')}}" alt="" class="post-img">
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <p class="text-center py-3 post-paragraph"  style="max-width: 850px;color: #f3f3f3;">طبق جدیدترین اخبار بازی، کمپانی راک استار گیمز (Rockstar Games)، سازنده و ناشر بازی Red Dead Redemption، با همکاری کمپانی سونی محتویاتی را برای بخش Red Dead Online بازی Red Dead Redemption 2 معرفی کرد. این محتویات معرفی شده در حالت دسترسی زودهنگام ابتدا در دسترس کاربران پلی استیشن 4 قرار می‌گیرد و پس از گذشت ۳۰ روز، کاربران ایکس باکس وان هم می‌توانند از آن استفاده کنند.

                            حالت Red Dead Online در ماه نوامبر در دسترس کاربران قرار می‌گیرد و دارندگان این بازی روی پلی‌استیشن 4 می‌توانند لباس Grizzlies Outlaw، اسب عربی Red Chestnut، Alligator Skin Ranch Cutter Saddle و اسلحه ریوولور دابل اکشن High Roller را زودتر از سایرین دریافت کنند. محتویات ذکر شده در واقع محتویات روز عرضه‌ی Red Dead Online است و احتمال دارد در آینده شاهد معرفی محتویات بیشتری برای این بخش باشیم.</p>
                    </div>
                </div>
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