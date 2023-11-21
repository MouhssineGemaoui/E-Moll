
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/middleware/mymiddleware.dart';
import 'package:EMOOL/view/screen/Aboutus.dart';
import 'package:EMOOL/view/screen/address/AdddetailsCheeckout.dart';
import 'package:EMOOL/view/screen/address/adddetails.dart';
import 'package:EMOOL/view/screen/address/view.dart';
import 'package:EMOOL/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:EMOOL/view/screen/auth/login.dart';
import 'package:EMOOL/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:EMOOL/view/screen/auth/signup.dart';
import 'package:EMOOL/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:EMOOL/view/screen/auth/success_signup.dart';
import 'package:EMOOL/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:EMOOL/view/screen/cart.dart';
import 'package:EMOOL/view/screen/checkout.dart'; 
import 'package:EMOOL/view/screen/homescreen.dart';
import 'package:EMOOL/view/screen/items.dart';
import 'package:EMOOL/view/screen/language.dart';
import 'package:EMOOL/view/screen/myfavorite.dart';
import 'package:EMOOL/view/screen/notification.dart';
import 'package:EMOOL/view/screen/onboarding.dart';
import 'package:EMOOL/view/screen/orders/archive.dart';
import 'package:EMOOL/view/screen/orders/details.dart';
import 'package:EMOOL/view/screen/orders/pending.dart';
import 'package:EMOOL/view/screen/productdetails.dart';
import 'package:EMOOL/view/screen/productdetailscat.dart';
import 'package:EMOOL/view/screen/search.dart';
import 'package:EMOOL/view/screen/splachscreen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Aboutus(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () =>   TestView()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  // 
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.search, page: () => const search()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.productdetailscat, page: () => const ProductDetailsCat()),
  GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),
  GetPage(name: AppRoute.notification, page: () => NotificationView()),
  //
  GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  GetPage(name: AppRoute.checkout, page: () => const Checkout()),
    GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(
      name: AppRoute.addressadddetails, page: () => const AddressAddDetails(), ),
     GetPage(   name: AppRoute.addressadddetailscheeckout, page: () => const AddressAddDetailsCheeckout()), 
     GetPage(   name: AppRoute.Aboutus, page: () => const Aboutus()), 
     GetPage(   name: AppRoute.language, page: () => const language()), 
     GetPage(   name: AppRoute.splachscreen, page: () => const splach_screen()), 
];
