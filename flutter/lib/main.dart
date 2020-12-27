// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'สถานการณ์โควิดวันนี้ ติดเชื้อเพิ่ม 110 ราย ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'เมื่อ วันที่ 26 ธันวาคม พ.ศ.2563',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
          
        ),
      ),
      /*3*/
      FavoriteWidget(),
    ],
  ),
);
////////////////////////////////////////////////////
Color color = Theme.of(context).primaryColor;
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);

////////////////////////////////////////////////////
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'ผู้ป่วยยืนยันติดเชื้อในประเทศ 64 ราย'
'ติดเชื้อในแรงงานต่างด้าว (คัดกรองเชิงรุก) 30 ราย'
'สถานที่กักกันที่รัฐจัดให้ 16 ราย'
'ผู้เดินทางไม่เข้าสถานที่กักกัน 0 ราย'
'รักษาหายเพิ่มขึ้น 15 ราย'
'กลับบ้านแล้ว 4,152 ราย'
'อยู่ระหว่างรักษาตัว 1,808 ราย'
'ไม่มีรายงานผู้เสียชีวิต ยอดผู้เสียชีวิต 60 ศพ'
'ยอดผู้ป่วยยืนยันสะสม 6,020 ราย นับเป็นรายที่ 5,911-6,020'
'ประเทศไทย เป็นอันดับที่ 144 ของโลก'
'เดินทางมาจากต่างประเทศ 16 ราย แยกเป็น เมียนมา 2 ราย,'
'รัสเซีย 4 ราย,อินเดีย 1 ราย ,ซาอุดิอาระเบีย 1 ราย,ตุรกี 1 ราย'
' สหราชอาณาจักร 1 ราย,โมซัมบิก 1 ราย,สหรัฐอเมริกา 3 ราย,เยอรมนี 1 ราย, ฝรั่งเศส 1 ราย '
'ผู้ติดเชื้อในแรงงานต่างด้าวจากการคัดกรองเชิงรุก ยอดสะสม 1,338 ราย',
    softWrap: true,
  ),
);
/////////////////////////////////////////////
    return MaterialApp(
      title: 'Thailand covid',
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Covid-19 in Thailand '),
          backgroundColor: Colors.green[500],
        ),
        body: ListView(       
      children: [ 
        Image.asset('images/covid19.jpg',            
                   width: 600,            
                   height:220,            
                  fit: BoxFit.cover,
                   ),            
      titleSection,
      buttonSection, 
      textSection,
      
      Image.asset('images/covid1.jpg',            
                   width: 50,            
                   height:400,            
                  fit: BoxFit.cover,
                   ),  
      ],            
        ),
      ),
    );
  }

  
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  ////////////////////////////////////////////////////////
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  
  void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {
      _favoriteCount -= 1;
      _isFavorited = false;
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
}
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
///////////////////////////////////////////////////////////////////////
