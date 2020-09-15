import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pemantau_covid/constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: SingleChildScrollView(
           controller : controller,
           child: Column(children: <Widget> [
           ClipPath(
             clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(left: 40, top:50 ,right:20),
               height: 350,
               width: double.infinity,
               decoration: BoxDecoration(
                 gradient : LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [
                     Color(0xff3383CD),
                     Color(0xFF11249F),
                   ]
                 ),
                 image: DecorationImage(image: AssetImage("assets/images/virus.png"),
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Align(
                     alignment: Alignment.topRight,
                     child: SvgPicture.asset("assets/icons/menu.svg"),
                     ),
                     SizedBox(height:20),
                     Expanded(child: Stack(
                       children:<Widget> [
                          SvgPicture.asset("assets/icons/Drcorona.svg",
                          width: 230,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 20,
                            left: 150,
                            child:Text("All you need \n is stay at home",
                          style: kHeadingTextStyle.copyWith(
                            color:Colors.white),))

                       ],
                     ))
                 ],
               ),
             ),
           )
           ],)
         ),
       ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      var path = Path();
      path.lineTo(0, size.height - 80);
      path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 80);
      path.lineTo(size.width, 0);
      path.close();
      return path;
    }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}