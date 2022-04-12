import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  TextStyle style_1=TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Archivo',
      color: Color.fromRGBO(118, 124, 156, 1)
  );
  TextStyle style_2=TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontFamily: 'Playfair Display SC',
      color: Color.fromRGBO(71, 78, 115, 1),
  );

  TextStyle style_3=TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    fontFamily: 'Playfair Display SC',
    color: Colors.black,
  );
  TextStyle style_4=TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: 'Playfair Display SC',
    color: Color.fromRGBO(118, 124, 156, 1),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 59,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/icons/drawer.png'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*(59/390),
                      height: MediaQuery.of(context).size.height*(59/841),
                      child: Image.asset('assets/icons/logo.png',fit: BoxFit.cover,),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                            width:30,
                            height: 30,
                            child: Image.asset('assets/images/sample_2.png')),
                        Positioned(
                          right:5,
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/sample_2.png')),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          Text('Trinity MarThoma Church,Houstone',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Robot',
            fontSize: 15,
            color: Colors.grey

          ),),
            Expanded(
              flex: 674,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Color.fromRGBO(71, 78, 115, 1),width: 2)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 24,
                    ),
                    Expanded(
                      flex: 111,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Spacer(flex: 136,),
                          Expanded(
                            flex: 111,
                            child: SizedBox(
                              child: Image.asset('assets/images/profile_picture.png'),
                            ),
                          ),
                          Spacer(flex: 89,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.edit,color: Colors.red,)),
                          Spacer(flex: 36,)
                        ],
                      ),
                    ),
                   Spacer(flex: 11,),
                    Text('Abraham Thomas',
                        style:
                    TextStyle(
                      fontSize: 24,
                      fontFamily: 'Playfair Display SC',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(53, 61, 101, 1)
                    ),
                    ),
                   Spacer(flex: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Peral Land East  ',style:style_1 ),
                        Text('  #56566  ',style:style_1),
                        Text('  Male',style: style_1),

                      ],
                    ),
                    Spacer(flex: 21,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        socialMediaIcon(context, 'twitter.png'),
                        SizedBox(width: MediaQuery.of(context).size.width*(13/390),),
                        socialMediaIcon(context, 'linkedin.png'),
                        SizedBox(width: MediaQuery.of(context).size.width*(13/390),),
                        socialMediaIcon(context, 'facebook.png'),
                        SizedBox(width: MediaQuery.of(context).size.width*(13/390),),
                        socialMediaIcon(context, 'whatsapp.png'),
                        SizedBox(width: MediaQuery.of(context).size.width*(13/390),),
                        socialMediaIcon(context, 'google.png'),

                      ],
                    ),
                    Spacer(flex: 22,),
                    Expanded(
                      flex: 55,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Expanded(
                              flex:1,
                                child: card(
                                    'Address', '601 Lakeland Terrace',
                                    left: true
                                )),
                            Expanded(
                                flex:1,
                                child: card(
                                    'Address', '601 Lakeland Terrace',

                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(flex: 24,),
                    myHouseHolders(context)
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
  
   Widget card(String title,String content,{bool left=false}){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(228, 232, 244, 1)
        ),
        borderRadius: left?BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20)
        ):
        BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/icons/phone.png",fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: style_2,),
              Text(content,style: style_1)
            ],
          )
        ],
      ),
      padding: EdgeInsets.all(10),
    );
   }
  Widget socialMediaIcon(BuildContext context,String image){
    return Container(
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height*(40/841),
      width: MediaQuery.of(context).size.height*(40/841),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Color.fromRGBO(110, 211, 223, 1), 
      ),
     child: Image.asset("assets/icons/"+image),
    );
  }
  Widget myHouseHolders(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(236, 242, 248, 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          )
      ),
      height: MediaQuery.of(context).size.width*(300/841),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Households'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                memberCard("assets/images/sample_5.png", 'Rachel Thomas', 'Wife'),
                memberCard("assets/images/sample_4.png", 'Aby Thomas', 'Sister'),
                memberCard("assets/images/sample_3.png", 'Rachel Thomas', 'Brother'),
              ],

            ),
          )
        ],
      ),
    );
  }
  Widget memberCard(String image,String name,String relation){
    return Container(

      child: Column(
        children: [
          Spacer(flex: 20,),
          Expanded(
              flex: 76,
              child: Image.asset(image)),
          Spacer(flex: 10,),
          Text(name,style: style_3,),
          Spacer(flex: 2,),
          Text(relation,style: style_4,),
          Spacer(flex: 20,)
        ],
      ),
    );
  }
}
