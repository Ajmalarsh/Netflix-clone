import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/widgets/custum_widgets.dart';
import 'package:netflix_clone/colors/colors.dart';
import 'package:netflix_clone/const.dart';

class Download_Page extends StatelessWidget {
  Download_Page({Key? key}) : super(key: key);
  final List imagelist = [
    "https://lumiere-a.akamaihd.net/v1/images/p_artemisfowl_19732_ece7d5ad.jpeg?region=0%2C0%2C540%2C810"
        'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:q-80/et00319643-eumlcdhhme-portrait.jpg',
    'https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/title-key-art/uncharted_onesheet_1400x2100_he.jpg?itok=dv7IpByX'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            child: AppbarWidget(
              title: 'Downloads ',
            ),
            preferredSize: Size.fromHeight(55)),
        body: ListView(
          children: [
            Row(
              children: const [
                cwidth,
                Icon(
                  Icons.settings,
                  color: cwhite,
                ),
                cwidth,
                Text('Smart download')
              ],
            ),
            Text('Indrodusing Download for you'),
            Text(
                'we will download a personalised selection of movies and shows for ypu so there is always something on your device '),
            Container(
              height: size.width * 1.4,
              width: size.width,
              color: cwhite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: size.width * 0.39,
                    ),
                  ),
                  Downloadimagewidget(margin: EdgeInsets.only(left: 100,bottom: 50),angle: 20, size: Size(size.width*0.4,size.width*0.58),),
                  Downloadimagewidget(margin: EdgeInsets.only(right: 100,bottom: 50),angle: -20,size: Size(size.width*0.4,size.width*0.58),),
                  Downloadimagewidget(margin: EdgeInsets.only(left: 0),size: Size(size.width*0.5,size.width*0.64),),
                ]
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Set up',
                style: TextStyle(
                  color: cwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              onPressed: () {},
              child: const Text(
                'See what you can download ',
                style: TextStyle(
                  color: cblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ));
  }
}

class Downloadimagewidget extends StatelessWidget {
  const Downloadimagewidget({
    Key? key,this.angle=0,required this.margin,required this.size,
    
  }) : super(key: key);

  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle:angle*pi/180,
      child: Container(
        margin: margin,
        width: size.width ,
        height: size.height,
        // color: cblack,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(
                  'lib/Presentation/Screens/download_screen/image/Splash-Screen-Music-Player (2).png'),
            )),
      ),
    );
  }
}
