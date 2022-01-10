import 'package:app/screens/ChangePassword/change_passwordPage.dart';
import 'package:app/screens/FinalOrder/final_OrderPage.dart';
import 'package:app/screens/Location/location_page.dart';
import 'package:app/screens/Login/login_page.dart';
import 'package:app/screens/Menu/menu_page.dart';
import 'package:app/screens/MenuMain/menuMain_page.dart';
import 'package:app/screens/MyCart/my_CartPage.dart';
import 'package:app/screens/MyOrder/my_orderPage.dart';
import 'package:app/screens/MyOrderSumm/MyOrderSumm.dart';
import 'package:app/screens/MyOrders/my_ordersPage.dart';
import 'package:app/screens/OrderStatus/order_Status.dart';
import 'package:app/screens/RecieveOrder/All_datas/payment_Page.dart';
import 'package:app/screens/RecieveOrder/add_address.dart';
import 'package:app/screens/RecieveOrder/address.dart';
import 'package:app/screens/Settings/settings_page.dart';
import 'package:app/screens/Shopping/shopping_page.dart';
import 'package:app/screens/SignUp/signUp_page.dart';
import 'package:app/screens/UserInfo/user_infoPage.dart';
import 'package:app/screens/Verification/ver_page.dart';
import 'package:app/screens/first_page.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/second_page.dart';
import 'package:app/screens/third_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/HomePage": (context) => const HomePage(),
        "/FirstPage": (context) => const FirstPage(),
        "/SecondPage": (context) => const SecondPage(),
        "/ThirdPage": (context) => const ThirdPage(),
        "/SignUpPage": (context) => const SignUpPage(),
        "/LoginPage": (context) => const LoginPage(),
        "/VerificationPage": (context) => const Verification(),
        "/LocationPage": (context) => const LocationPage(),
        "/ShoppingPage": (context) => const ShoppingPage(),
        "/MenuPage": (context) => const MenuPage(),
        "/MenuMainPage": (context) => const MenuMainPage(),
        "/MyOrderPage": (context) => const MyOrderPage(),
        "/MyCartPage": (context) => const MyCartPage(),
        "/MyOrdersPage":(context) => const MyOrdersPage(),
        "/FinalOrder":(context) => const FinalOrderPage(),
        "/OrderStatus":(context) => const OrderStatus(),
        "/RecieveOrders" :(context) => const RecieveOrders(),
        "/Address":(context) => const Address(),
        "/PaymentPage":(context) => const PaymentPage(),
        "/Settings" :(context) => const SettingsPage(),
        "/UserInfo":(context) => const UserInfo(),
        "/ChangePassword" :(context) => ChangePassword(),
        "/MyOrderSumm" : (context) => MyOrderSumm(), 
       }, 
      initialRoute: '/HomePage',
    );
  }
}
