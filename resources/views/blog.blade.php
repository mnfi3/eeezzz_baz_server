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
@include('include.navigation')

<div class="all-posts" style="margin-top: 150px" id="posts">
    <div class="conatiner">
        <div class="d-flex flex-column align-items-center ">
            <div class="flex-item" style="width: 100%">
                <a href="{{url('/blog/details')}}" style="text-decoration: none"><h2 class="text-center text-white posts-title">Red Dead Redemption2 تازه ترین اخبار نسخه کامپیوتر   </h2></a>
                <h5 class="text-center py-3" > 98/07/15</h5>
                <div class="row">
                    <div class=" m-auto">
                        <a href="{{url('/blog/details')}}">
                            <img src="{{url('img/rdr.jpg')}}" alt="" class="posts-img">
                        </a>
                      </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <p class="text-center py-3 posts-paragraph"  style="max-width: 480px;color: #f3f3f3;">کمپانی راک‌ استار گیمز، محتویات روز عرضه بخش Red Dead Online بازی Red Dead Redemption 2 را معرفی کرد و ابتدا در دسترس کاربران پلی استیشن 4 قرار می‌گیرند.</p>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <div class="button_cont" align="left">
                            <a href="{{url('/blog/details')}}" class="custom-btn text-center" style="max-width: 120px" >
                                <span>ادامه مطلب</span>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="flex-item " style="width: 100%; background-color: #f3f3f3">
                <a href="{{url('/blog/details')}}" style="text-decoration: none"><h2 class="text-center text-dark mt-3 posts-title">Red Dead Redemption2 تازه ترین اخبار نسخه کامپیوتر   </h2></a>
                <h5 class="text-center py-3 text-muted" > 98/07/15</h5>
                <div class="row">
                    <div class=" m-auto">
                        <a href="{{url('/blog/details')}}">
                            <img src="{{url('img/gta.jpg')}}" alt="" class="posts-img">
                        </a>
                      </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <p class="text-center py-3 posts-paragraph"  style="max-width: 480px;color: #0b0b0b;">کمپانی راک‌ استار گیمز، محتویات روز عرضه بخش Red Dead Online بازی Red Dead Redemption 2 را معرفی کرد و ابتدا در دسترس کاربران پلی استیشن 4 قرار می‌گیرند.</p>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <div class="button_cont" align="left">
                            <a href="{{url('/blog/details')}}" class="custom-btn text-center" style="max-width: 120px" >
                                <span>ادامه مطلب</span>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="flex-item" style="width: 100%">
                <a href="" style="text-decoration: none"><h2 class="text-center text-white posts-title">Red Dead Redemption2 تازه ترین اخبار نسخه کامپیوتر   </h2></a>
                <h5 class="text-center py-3" > 98/07/15</h5>
                <div class="row">
                    <div class=" m-auto">
                        <a href="">
                            <img src="{{url('img/rdr.jpg')}}" alt="" class="posts-img">
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <p class="text-center py-3 posts-paragraph"  style="max-width: 480px;color: #f3f3f3;">کمپانی راک‌ استار گیمز، محتویات روز عرضه بخش Red Dead Online بازی Red Dead Redemption 2 را معرفی کرد و ابتدا در دسترس کاربران پلی استیشن 4 قرار می‌گیرند.</p>
                    </div>
                </div>
                <div class="row">
                    <div class=" m-auto">
                        <div class="button_cont" align="left">
                            <button class="custom-btn text-center " style="max-width: 120px" >
                                <span>ادامه مطلب</span>
                            </button>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>


</div>


@include('include.footer')
</body>

</html>