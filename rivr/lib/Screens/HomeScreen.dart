import 'package:flutter/material.dart';
import 'package:rivr/Utils/Colors.dart' as colors;
import 'package:sad_lib/CustomWidgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size _size;

  List<Map> _howItWorks = [
    {
      "step": "STEP 1",
      "info": "Think dark theme! If it’s not in dark theme then it’s not worth it."
    },
    {
      "step": "STEP 2",
      "info": "Know how to code. More specifically, know the power of CTRL+C and CTRL+V"
    },
    {
      "step": "STEP 3",
      "info": "Now that you have your code, and it’s somewhat working, simply skip the testing phase and JUST GET IT ON THE INTERNET!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Material(
      color: colors.bg,
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: _size.width > 700 ? 100.0 : 40.0, vertical: _size.width > 700 ? 50.0 : 25.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 80.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView(
                      text: "DM STUDIOS",
                      color: colors.white,
                      size: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                    TextView(
                      text: "2021",
                      color: colors.white,
                      size: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: _size.width,
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: colors.white)
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextView(
                          text: "RIVR AUDIO LIVE\nSTREAMING",
                          color: colors.white,
                          size: _size.width > 700 ? 40.0 : 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonView(
                                onPressed: () {},
                                child: TextView(
                                  text: "Join Room",
                                  color: colors.white,
                                  size: 18.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                ),
                                border: Border.all(color: colors.white),
                                borderRadius: 0.0,
                                padding: EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(right: 20.0,),
                              ),
                              ButtonView(
                                onPressed: () {},
                                child: TextView(
                                  text: "Start Room",
                                  color: colors.white,
                                  size: 18.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                ),
                                border: Border.all(color: colors.white),
                                borderRadius: 0.0,
                                padding: EdgeInsets.all(8.0),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
                          child: ImageView.network(
                            imageKey: "https://images.pexels.com/photos/3214064/pexels-photo-3214064.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                            aspectRatio: 3.0,
                            width: _size.width,
                            colorFilter: colors.bg.withOpacity(0.5,),
                            customLoader: Container(
                              color: colors.bg.withOpacity(0.25,),
                            ),
                          ),
                        ),

                        Divider(
                          height: 1.0,
                          color: colors.white,
                        ),
                        TextView(
                          text: "HOW\nIT WORKS",
                          color: colors.white,
                          size: 30.0,
                          fontWeight: FontWeight.w700,
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.spaceEvenly,
                          spacing: _size.width > 700 ? 30.0 : 20.0, runSpacing: _size.width > 700 ? 30.0 : 20.0,
                          children: [
                            for(int i = 0; i < _howItWorks.length; i++)
                              Container(
                                width: _size.width > 700 ? _size.width / 4.44 : _size.width,
                                //height: _size.width > 700 ? _size.width / 5.0 : _size.width / 2.5,
                                padding: EdgeInsets.all(20.0),
                                margin: EdgeInsets.only(bottom: 40.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextView(
                                      text: _howItWorks[i]["step"],
                                      color: colors.white,
                                      size: 19.0,
                                      fontWeight: FontWeight.w700,
                                      padding: EdgeInsets.only(bottom: 5.0),
                                    ),
                                    TextView(
                                      text: _howItWorks[i]["info"],
                                      color: colors.white,
                                      size: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),

                        Divider(
                          height: 1.0,
                          color: colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.0,),
                          child: Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            spacing: _size.width > 700 ? 30.0 : 10.0, runSpacing: _size.width > 700 ? 30.0 : 10.0,
                            children: [
                              TextView(
                                  text: "dmstudios268@gmail.com",
                                  color: colors.white,
                                  size: 18.0,
                                  fontWeight: FontWeight.w400,
                                  padding: EdgeInsets.only(right: 10.0)
                              ),
                              TextView(
                                  text: "Instagram",
                                  color: colors.white,
                                  size: 18.0,
                                  fontWeight: FontWeight.w400,
                                  padding: EdgeInsets.only(left: 10.0)
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}