<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="enamad" content="265375"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    @include('include.page-title')
    @include('include.bootstrap')
    @include('include.nav-style-js')
</head>
<body>
<div class="d-flex flex-column justify-content-center align-items-center">
    <div class=" mt-5" style="font-weight: 900;font-size: 1.9rem;color:#ff5c1a ">ایزی بازی</div>
    <div class=" mt-0"><img src="img/successfull.png" alt="پرداخت موفق" style="width: 190px"></div>

    <div class="my-2">.پرداخت با موفقیت انجام شد</div>
    <div class="">مبلغ پرداخت شده : {{number_format($amount)}} تومان</div>
    <div class="">کد پیگیری : {{$receipt}}</div>
    <a href="#return-to-app" class="text-center text-white mt-3 p-2" style="text-decoration: none;width: 170px ; border-radius: 5px;alignment: center;font-family: Vazir;font-weight: 500;font-size: 17px; background-color: #ff5c1a; border-color: antiquewhite" > بازگشت به ایزی بازی </a>

</div>
</body>

</html>
