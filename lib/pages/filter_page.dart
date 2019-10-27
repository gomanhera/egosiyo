import 'package:flutter/material.dart';
import 'item_reviews_page.dart';

class FilterPage extends StatefulWidget
{
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage>
{
  final double dogAvatarSize = 150.0;
  // slider의 초기값
  double _sliderValue = 10.0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton
        (
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text('방 조건 입력', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
//         actions: <Widget>
//         [
//           Container
//           (
//             margin: EdgeInsets.only(right: 8.0),
//             child: Row
//             (
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>
//               [
//                 Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
//                 Icon(Icons.arrow_drop_down, color: Colors.black54)
//               ],
//             ),
//           )
//         ],
      ),
      body: ListView
      (
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: depositWidget
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              child: roomtypeWidget
          ),
          ShopItem(),
          BadShopItem(),
          NewShopItem(),

          Container
            (
              margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
              child: Material
                (
                elevation: 8.0,
                color: Colors.black,
                borderRadius: BorderRadius.circular(32.0),
                child: InkWell
                  (
                  onTap: () {},
                  child: Padding
                    (
                    padding: EdgeInsets.all(12.0),
                    child: Row
                      (
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Icon(Icons.add, color: Colors.white),
                        Padding(padding: EdgeInsets.only(right: 16.0)),
                        Text('내방 경매 시작', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
              ),
          ),
        ],
      )
    );
  }

  Widget get depositWidget {
    return Column(
      children: <Widget>[
        depositTitle,
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Slider(
                  activeColor: Colors.indigoAccent,
                  min: 0.0,
                  max: 100.0,
                  divisions: 2,
                  onChanged: (newRating) {
                    setState(() => _sliderValue = newRating);
                  },
                  value: _sliderValue,
                ),
              ),

              // This is the part that displays the value of the slider.
              Container(
                width: 50.0,
                alignment: Alignment.centerRight,
                child: Text('${_sliderValue.toInt()}' + '만원')
              )
            ],
          ),
        ),
      ],
    );
  }

  // A simple Raised Button that as of now doesn't do anything yet.
  Widget get depositTitle {
    return Row(
        children: <Widget>
        [
          Text('보증금')
        ]
    );
  }
}

  Widget get roomtypeWidget {
    return Column(
      children: <Widget>[
        roomtypeTitle,
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),

          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Flexible(
                  flex: 10,
                  child: Material
                    (
                    elevation: 8.0,
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2.0),
                    child: InkWell
                      (
                      onTap: () {},
                      child: Padding
                        (
                        padding: EdgeInsets.all(12.0),
                        child: Row
                          (
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Padding(padding: EdgeInsets.only(right: 0.0)),
                            Text('미니룸', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )
              ),
              Spacer(flex: 1),
              Flexible(
                  flex: 10,
                  child: Material
                    (
                    elevation: 8.0,
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2.0),
                    child: InkWell
                      (
                      onTap: () {},
                      child: Padding
                        (
                        padding: EdgeInsets.all(12.0),
                        child: Row
                          (
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Padding(padding: EdgeInsets.only(right: 0.0)),
                            Text('샤워룸', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )
              ),
              Spacer(flex: 1),
              Flexible(
                  flex: 10,
                  child: Material
                    (
                    elevation: 8.0,
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2.0),
                    child: InkWell
                      (
                      onTap: () {},
                      child: Padding
                        (
                        padding: EdgeInsets.all(12.0),
                        child: Row
                          (
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Padding(padding: EdgeInsets.only(right: 0.0)),
                            Text('원룸', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )
              )
            ],

          ),
        ),
      ],
    );
  }

  // A simple Raised Button that as of now doesn't do anything yet.
  Widget get roomtypeTitle {
    return Row(
        children: <Widget>
        [
          Text('방 타입')
        ]
    );
  }



class _DogDetailPageState extends State<FilterPage> {
  final double dogAvatarSize = 150.0;
  // This is the starting value of the slider.
  double _sliderValue = 10.0;

  // ...

  Widget get addYourRating {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // In a row, column, listview, etc., a Flexible widget is a wrapper
              // that works much like CSS's flex-grow property.
              //
              // Any room left over in the main axis after
              // the widgets are given their width
              // will be distributed to all the flexible widgets
              // at a ratio based on the flex property you pass in.
              // Because this is the only Flexible widget,
              // it will take up all the extra space.
              //
              // In other words, it will expand as much as it can until
              // the all the space is taken up.
              Flexible(
                flex: 1,
                // A slider, like many form elements, needs to know its
                // own value and how to update that value.
                //
                // The slider will call onChanged whenever the value
                // changes. But it will only repaint when its value property
                // changes in the state using setState.
                //
                // The workflow is:
                // 1. User drags the slider.
                // 2. onChanged is called.
                // 3. The callback in onChanged sets the sliderValue state.
                // 4. Flutter repaints everything that relies on sliderValue,
                // in this case, just the slider at its new value.
                child: Slider(
                  activeColor: Colors.indigoAccent,
                  min: 0.0,
                  max: 15.0,
                  onChanged: (newRating) {
                    setState(() => _sliderValue = newRating);
                  },
                  value: _sliderValue,
                ),
              ),

              // This is the part that displays the value of the slider.
              Container(
                width: 50.0,
                alignment: Alignment.center,
                child: Text('${_sliderValue.toInt()}',
                    style: Theme.of(context).textTheme.display1),
              ),
            ],
          ),
        ),
        submitRatingButton,
      ],
    );
  }

  // A simple Raised Button that as of now doesn't do anything yet.
  Widget get submitRatingButton {
    return RaisedButton(
      onPressed: () => print('pressed!'),
      child: Text('Submit'),
      color: Colors.indigoAccent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Meet '),
//        title: Text('Meet ${widget.dog.name}'),
      ),
      // Make the body a ListView that displays
      // both the profile and the rating form.
      body: ListView(
        children: <Widget>[addYourRating],
      ),
    );
  }


// In the next section you'll add error handling.
// For now this is all it does.
  void updateRating() {
//    setState(() => widget.dog.rating = _sliderValue.toInt());
  }
}


class ShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
      (
        children: <Widget>
        [
          /// Item card
          Align
          (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
            (
              size: Size.fromHeight(172.0),
              child: Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  Container
                  (
                    margin: EdgeInsets.only(top: 24.0),
                    child: Material
                    (
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(12.0),
                      shadowColor: Color(0x802196F3),
                      color: Colors.white,
                      child: InkWell
                      (
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemReviewsPage())),
                        child: Padding
                        (
                          padding: EdgeInsets.all(24.0),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  Text('보증금', style: TextStyle(color: Colors.blueAccent)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
//                                      Icon(Icons.star, color: Colors.black, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Bought', style: TextStyle()),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('1,361', style: TextStyle(fontWeight: FontWeight.w700)),
                                  ),
                                  Text('times for a profit of', style: TextStyle()),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Material
                                    (
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: Padding
                                      (
                                        padding: EdgeInsets.all(4.0),
                                        child: Text('\$ 13K', style: TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// Item image
                  Align
                  (
                    alignment: Alignment.topRight,
                    child: Padding
                    (
                      padding: EdgeInsets.only(right: 16.0),
                      child: SizedBox.fromSize
                      (
                        size: Size.fromRadius(54.0),
                        child: Material
                        (
                          elevation: 20.0,
                          shadowColor: Color(0x802196F3),
                          shape: CircleBorder(),
                          child: Image.asset('res/shoes1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          Padding
          (
            padding: EdgeInsets.only(top: 160.0, left: 32.0),
            child: Material
            (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.only
              (
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
              (
                decoration: BoxDecoration
                (
                  gradient: LinearGradient
                  (
                    colors: [ Color(0xFF84fab0), Color(0xFF8fd3f4) ],
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight
                  )
                ),
                child: Container
                (
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile
                  (
                    leading: CircleAvatar
                    (
                      backgroundColor: Colors.purple,
                      child: Text('AI'),
                    ),
                    title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                    subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BadShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
      (
        children: <Widget>
        [
          /// Item card
          Align
          (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
            (
              size: Size.fromHeight(172.0),
              child: Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  Container
                  (
                    margin: EdgeInsets.only(top: 24.0),
                    child: Material
                    (
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(12.0),
                      shadowColor: Color(0x802196F3),
                      color: Colors.transparent,
                      child: Container
                      ( 
                        decoration: BoxDecoration
                        (
                          gradient: LinearGradient
                          (
                            colors: [ Color(0xFFDA4453), Color(0xFF89216B) ]
                          )
                        ),
                        child: Padding
                        (
                          padding: EdgeInsets.all(24.0),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  Text('Nike Jordan III', style: TextStyle(color: Colors.white)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('1.3', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.amber, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Bought', style: TextStyle(color: Colors.white)),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                  ),
                                  Text('times for a profit of', style: TextStyle(color: Colors.white)),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Material
                                    (
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: Padding
                                      (
                                        padding: EdgeInsets.all(4.0),
                                        child: Text('\$ 363', style: TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// Item image
                  Align
                  (
                    alignment: Alignment.topRight,
                    child: Padding
                    (
                      padding: EdgeInsets.only(right: 16.0),
                      child: SizedBox.fromSize
                      (
                        size: Size.fromRadius(54.0),
                        child: Material
                        (
                          elevation: 20.0,
                          shadowColor: Color(0x802196F3),
                          shape: CircleBorder(),
                          child: Image.asset('res/shoes1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          Padding
          (
            padding: EdgeInsets.only(top: 160.0, right: 32.0,),
            child: Material
            (
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only
              (
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
              (
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile
                (
                  leading: CircleAvatar
                  (
                    backgroundColor: Colors.purple,
                    child: Text('AI'),
                  ),
                  title: Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: Text('The shoes that arrived weren\'t the same as the ones in the image...', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Align
      (
        alignment: Alignment.topCenter,
        child: SizedBox.fromSize
        (
          size: Size.fromHeight(172.0),
          child: Stack
          (
            fit: StackFit.expand,
            children: <Widget>
            [
              /// Item description inside a material
              Container
              (
                margin: EdgeInsets.only(top: 24.0),
                child: Material
                (
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(12.0),
                  shadowColor: Color(0x802196F3),
                  color: Colors.white,
                  child: Padding
                  (
                    padding: EdgeInsets.all(24.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        /// Title and rating
                        Column
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>
                          [
                            Text('[New] Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                            Row
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>
                              [
                                Text('No reviews', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                              ],
                            ),
                          ],
                        ),
                        /// Infos
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Text('Bought', style: TextStyle()),
                            Padding
                            (
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Text('times for a profit of', style: TextStyle()),
                            Padding
                            (
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Material
                              (
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.green,
                                child: Padding
                                (
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('\$ 0', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              /// Item image
              Align
              (
                alignment: Alignment.topRight,
                child: Padding
                (
                  padding: EdgeInsets.only(right: 16.0),
                  child: SizedBox.fromSize
                  (
                    size: Size.fromRadius(54.0),
                    child: Material
                    (
                      elevation: 20.0,
                      shadowColor: Color(0x802196F3),
                      shape: CircleBorder(),
                      child: Image.asset('res/shoes1.png'),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}