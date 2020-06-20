<?php

namespace App\Http\Controllers\web_service;

//this class contain messages
class ms {

  //register
  const REGISTER_NAME_ERROR = 'لطفا نام و نام خانوادگی  خود را به درستی وارد کنید';
  const REGISTER_USER_NAME_ERROR = 'این نام کاربری در سیستم وجود دارد';
  const REGISTER_PHONE_NUMBER_ERROR = 'این شماره موبایل در سیستم وجود دارد';
  const REGISTER_EMAIL_ERROR = 'ایمیل وارد شده اشتباه است یا از قبل در سیستم وجود دارد';
  const REGISTER_PASSWORD_ERROR = 'لطفا کلمه عبور بهتری وارد کنید';
  const REGISTER_MOBILE_ERROR = 'این شماره تلفن قبلا در سیستم ثبت شده است';
  const REGISTER_NATIONAL_NUMBER_ERROR = 'این  کد ملی قبلا در سیستم ثبت شده است یا به اشتباه وارد شده است';
  const REGISTER_SUCCESS = 'حساب با موفقیت ایجاد شد';
  const REGISTER_TOKEN_INVALID = ' توکن تایید موبایل اشتباه است. لطفا دوباره اقدام به دریافت کد تایید نمایید';
  const USER_NAME_NOT_AVAILABLE = 'این نام کاربری در دسترس نمی باشد لطفا نام کاربری دیگری انتخاب کنید(حداقل 5 کاراکتر)';
  const USER_NAME_AVAILABLE = 'این نام کاربری در دسترس بوده و میتوانید انتخاب کنید';
  const MOBILE_NOT_VALID = 'شماره موبایل ارسال شده اشتباه است';

  //login
  const LOGIN_FAIL_ERROR = 'ورود به حساب کاربری انجام نشد.لطفا ایمیل و رمز عبور خود را با دقت وارد کنید';
  const LOGIN_MOBILE_FAIL = 'ورود به حساب کاربری انجام نشد.لطفا شماره موبایل خود را با دقت وارد کنید';
  const LOGIN_PASSWORD_FAIL = 'ورود به حساب کاربری انجام نشد.لطفا رمز عبور خود را با دقت وارد کنید';
  const LOGIN_SUCCESS = 'با موفقیت وارد شدید';
  const LOGIN_RETRY = 'شما قبلا وارد حساب کاربری شده اید';
  const MUST_BE_LOGIN = 'لطفا وارد حساب کاربری خود شوید';

  //change pass
  const CHANGE_PASSWORD_OLD_PASS_ERROR = 'رمز عبور فعلی اشتباه است';
  const CHANGE_PASSWORD_NEW_PASS_ERROR = 'لطفا رمز عبور بهتری انتخاب کنید';
  const CHANGE_PASSWORD_SUCCESS = 'رمز عبور با موفقیت بروز شد';
  //logout
  const LOGOUT_SUCCESS = 'با موفقیت از حساب کاربری خارج شدید';

  //server error
  const INTERNAL_SERVER_ERROR = 'مشکلی در سرور به وجود آمده است لطفا دوباره امتحان کنید';

  //data  messages
  const INVALID_DATA = 'اطلاعات ارسال شده صحیح نمیباشند لطفا ورودی ها را بررسی کنید';
  const NOT_FOUND_OBJECT = 'اطلاعات مورد نظر یافت نشد';
  const EXIST_OBJECT = 'اطلاعات مورد نظر قبلا ثبت شده است';


  //crud messages
  const CRUD_SAVE_SUCCESS = 'اطلاعات با موفقیت ذخیره شد';
  const CRUD_UPDATE_SUCCESS = 'اطلاعات با موفقیت به روز رسانی شد';
  const CRUD_DELETE_SUCCESS = 'اطلاعات با موفقیت حذف شد';


  //access
  const NO_ACCESS = 'این امکان برای شما وجود ندارد';
  const NO_ACCESS_STILL = 'این امکان هنوز فعال نشده است';



  //search
  const SEARCH_TEXT_TOO_SMALL = 'متن شما برای جستجو بسیار کوتاه است (حداقل 3 کاراکتر)';
  const SEARCH_RESULT_NULL = 'نتیجه ای یافت نشد';


  //payment
  const AMOUNT_TOO_LOW = 'مبلغ وارد شده بسیار کم است (حداقل 100 تومان)';
  const PAYMENT_SUCCESS = 'پرداخت با موفقیت انجام شد';
  const PAYMENT_FAILED = 'پرداخت ناموفق بود.لطفا دوباره امتحان کنید';
  const BALANCE_NOT_ENOUGH = 'شارژ حساب شما کافی نمی باشد.لطفا حساب خود را شارژ کرده و دوباره اقدام نمایید';

  //settlement
  const SETTLEMENT_MIN_AMOUNT = 'اعتبار شما برای تسویه حساب کافی نیست';
  const SETTLEMENT_REQUEST_SUCCESS = 'درخواست تسویه حساب شما با موفقیت ثبت شد';
  const SETTLEMENT_REQUEST_DUPLICATE = 'شما قبلا درخواست تسویه حساب داده اید.لطفا شکیبا باشید تا درخواست شما بررسی شود';
  const SETTLEMENT_NOT_EXIST = 'هیچ درخواست تسویه ای وجود ندارد';
  const SETTLEMENT_DADA_INVALID = 'اطلاعات ارسالی برای تسویه حساب اشتباه است';
  const SETTLEMENT_NAME_INVALID = 'لطفا نام دارنده حساب را با دقت وارد کنید';


  //product
  const NOT_EXIST_PRRODUCT = 'متاسفانه این محصول موجود نمی باشد';


  //notification
  const FCM_INCREASE_CREDIT_SUCCESS_TITLE = 'شارژ حساب کاربری';
  const FCM_INCREASE_CREDIT_SUCCESS_BODY = 'عملیات شارژ حساب کاربری با موفقیت انجام شد';
  const FCM_INCREASE_CREDIT_FAIL_TITLE = 'شارژ ناموفق';
  const FCM_INCREASE_CREDIT_FAIL_BODY = 'عملیات شارژ حساب کاربری انجام نشد';

  const FCM_SHOP_GAME_SUCCESS_TITLE = 'خرید';
  const FCM_SHOP_GAME_SUCCESS_BODY = 'عملیات خرید بازی با موفقیت انجام شد';
  const FCM_SHOP_GAME_FAIL_TITLE = 'خرید ناموفق';
  const FCM_SHOP_GAME_FAIL_BODY = 'عملیات خرید بازی انجام نشد';

  const FCM_RENT_GAME_SUCCESS_TITLE = 'اجاره';
  const FCM_RENT_GAME_SUCCESS_BODY = 'عملیات اجاره بازی با موفقیت انجام شد';
  const FCM_RENT_GAME_FAIL_TITLE = ' اجاره ناموفق';
  const FCM_RENT_GAME_FAIL_BODY = 'عملیات اجاره بازی انجام نشد';

  const FCM_EXTEND_RENT_GAME_SUCCESS_TITLE = 'تمدید کرایه';
  const FCM_EXTEND_RENT_GAME_SUCCESS_BODY = 'عملیات تمدید کرایه بازی با موفقیت انجام شد';
  const FCM_EXTEND_RENT_GAME_FAIL_TITLE = ' تمدید کرایه ناموفق';
  const FCM_EXTEND_RENT_GAME_FAIL_BODY = 'عملیات تمدید کرایه بازی انجام نشد';


  //address
  const NOT_EXIST_ADDRESS_FOR_USER = 'هیچ آدرسی برای این کاربر ثبت نشده است';

  //sms
  const SMS_TO_MANY_CODE_REQUEST = 'تعداد درخواست شما برای ارسال کد بیش از حد می باشد';
  const SMS_SENT_SUCCESS = 'کد تایید ارسال شد';
  const SMS_MOBILE_INVALID = 'شماره تلفن وارد شده اشتباه است';
  const SMS_MOBILE_USER_NOT_FOUND = 'کاربری با این شماره یافت نشد';
  const SMS_REGISTER_MOBILE_DUPLICATE = 'این شماره تلفن از قبل در سیستم ثبت شده است';
  const SMS_VERIFICATION_CODE_INVALID = 'کد فعالسازی وارد شده اشتباه و یا منقضی شده است';
  const SMS_VERIFICATION_CODE_VALIDATION_SUCCESS = 'شماره موبایل تایید شد';



  //extend rent messages
  const EXTEND_RENT_NOT_FOR_THIS_USER = 'این محصول در لیست اجاره های شما قرار ندارد';
  const RENT_LATE_TOO_MUCH = 'تاخیر این محصول بیش از حد مجاز بوده است';



  //admin panel messages
  const ADMIN_SETTLEMENT_REQUEST_SUCCESS = 'کاربر گرامی درخواست تسویه حساب شما تایید شد';
  const ADMIN_SETTLEMENT_PAYMENT_SUCCESS = '';

  //discount
  const DISCOUNT_NOT_EXIST = 'کد تخفیف وارد شده اشتباه است';
  const DISCOUNT_TIME_NOT_STARTED = 'زمان شروع استفاده از این کد فرا نرسیده است';
  const DISCOUNT_TIME_FINISHED = 'مهلت استفاده از این کد به پایان رسیده است';
  const DISCOUNT_REMAINING_FINISHED = 'تعداد مجاز استفاده از این کد به پایان رسیده است';
  const DISCOUNT_IS_JUST_TO_FIRST_SHOP = 'این کد تخفیف فقط برای اولین خرید معتبر است';
  const DISCOUNT_IS_JUST_TO_FIRST_RENT = 'این کد تخفیف فقط برای اولین کرایه معتبر است';

  //payment
  const PAYMENT_GATEWAY_ERROR = 'خطا در ارتباط با درگاه پرداخت';
  const ZARINPAL_AMOUNT_TO_LOW = 'مبلغ قابل پرداخت بسیار کم می باشد';


}
