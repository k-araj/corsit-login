import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:clay_containers/clay_containers.dart';
import 'dart:math';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/services.dart';


void main(){
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CORSIT Login',
    home:Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
             MyHomePage()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage('images/3.jpg'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
        appBar: AppBar(
          title: const Text(' Welcome to CORSIT!!',
          style: TextStyle(
            letterSpacing: 1.5,
              fontFamily: 'OriginTech personal use',
              color: Colors.white,
              //fontSize: 30.0,
              //fontWeight: FontWeight.bold
          ),),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'CORSIT Menu',
                    style: textTheme.button,
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  leading: const Icon(Icons.login),
                  title: const Text('Member Login'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                ),
                const ListTile(
                  leading: Icon(Icons.android),
                  title: Text('Basic Bots'),
                  //onTap: () => selectDestination(1),
                ),
                const ListTile(
                  leading: Icon(Icons.adb),
                  title: Text('Advance Bots'),
                  //onTap: () => selectDestination(2),
                ),
                const ListTile(
                  leading: Icon(Icons.bubble_chart),
                  title: Text('Our Projects'),
                  //onTap: () => selectDestination(2),
                ),
                const ListTile(
                  leading: Icon(Icons.bubble_chart_outlined),
                  title: Text('Upcoming Projects'),
                  //onTap: () => selectDestination(2),
                ),
                const ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text('Our Events'),
                  //onTap: () => selectDestination(2),
                ),
                ListTile(
                  leading: const Icon(Icons.calendar_today_outlined),
                  title: const Text('Upcoming Events'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword()));
                  },
                ),
                const ListTile(
                  leading: Icon(Icons.accessibility_new_outlined),
                  title: Text('Member Details'),
                  //onTap: () => selectDestination(1),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Shortcuts',
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserInfo()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.chat_bubble),
                  title: const Text('FAQs'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.note),
                  title: const Text('Terms & Conditions'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: const Text('Privacy Policy'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.contact_page),
                  title: const Text('About Us'),
                  onTap: () => {},
                ),
                const SafeArea(child: Text('Copyright 2022 CORSIT | All Rights Reserved'))
              ],
            ),
          ),
        ),
        body: Container(

          // for responsiveness of the ui we get the height
          // of current media using media queries
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            // for creating a linear gradient in
            // the background using two colors
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.deepOrangeAccent,
                  Colors.lightGreenAccent,
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),

            // building the layout
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [

                    // for creating the purple ball
                    Positioned(
                        top: constraints.maxHeight * 0.19,
                        left: constraints.maxWidth * 0.01,
                        child: Container(
                          height: constraints.maxHeight * 0.20,
                          width: constraints.maxWidth * 0.35,
                          decoration: const BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.purple
                                ],
                                radius: 0.7,
                              ),
                              shape: BoxShape.circle),
                        )),

                    // for creating the red ball
                    Positioned(
                        top: constraints.maxHeight * 0.61,
                        right: constraints.maxWidth * 0.01,
                        child: Container(
                          height: constraints.maxHeight * 0.20,
                          width: constraints.maxWidth * 0.35,
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.red.withOpacity(0.6),
                                  Colors.redAccent
                                ],
                                radius: 0.7,
                              ),

                              shape: BoxShape.circle),
                        )),

                    // for creating the glassmorphic
                    // container in the center
                    Center(
                      child: GlassmorphicContainer(
                        height: constraints.maxHeight * 0.5,
                        width: constraints.maxWidth * 0.8,
                        borderRadius: constraints.maxHeight * 0.02,
                        blur: 15,
                        alignment: Alignment.center,
                        border: 2,
                        linearGradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.2),
                              Colors.white38.withOpacity(0.2)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderGradient: LinearGradient(colors: [
                          Colors.white24.withOpacity(0.2),
                          Colors.white70.withOpacity(0.2)
                        ]),
                        child: Stack(
                          children: [

                            // providing gfg logo to the container
                            Positioned(
                              top: constraints.maxHeight * 0.025,
                              right: constraints.maxWidth * 0.05,
                              child: Container(
                                height: constraints.maxHeight * 0.5,
                                width: constraints.maxWidth * 0.70,
                                child: Image.asset('images/3.jpg'),
                              ),
                            ),

                            // providing text to the container
                            Positioned(
                              top: constraints.maxHeight * 0.035,
                              right: constraints.maxWidth * 0.05,
                              child: Container(
                                height: constraints.maxHeight * 0.23,
                                width: constraints.maxWidth * 0.70,
                                child: const Text('ROBOTICS CLUB OF SIT',
                                  style: TextStyle(
                                      fontFamily: 'TESLA',
                                      //letterSpacing: 2.5,
                                      color: Colors.black54,
                                      fontSize: 21.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),

                            // providing technical scripter
                            // logo to the container
                            Positioned(
                              top: constraints.maxHeight * 0.35,
                              right: constraints.maxWidth * 0.10,
                              child: Container(
                                height: constraints.maxHeight * 0.25,
                                width: constraints.maxWidth * 0.60,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "ROBOCORE 2022",
                                    style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 1,
                                            fontSize: 80,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            )));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int img=3;

  void changeState()
  {
    setState(() {
      img=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
          backgroundColor: Colors.teal[200],
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:50.0),
                child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClayContainer(
                            color:Colors.teal[200],
                            height: 100,
                            width: 100,
                            borderRadius: 50,
                            emboss: true,
                            curveType: CurveType.convex,
                            child: TextButton(onPressed:(){ changeState(); },
                              child:CircleAvatar(
                                radius: 50.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('images/$img.jpg'),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('CORSIT',
                              style: TextStyle(
                                  fontFamily: 'TESLA',
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                          const Text('ROBOTICS CLUB OF SIT',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 2.5,
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                            width: 150.0,
                            child: Divider(
                              color: Colors.black45,
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                              child: ClayContainer(
                                depth: 30,
                                borderRadius: 10,
                                color: Colors.teal[200],
                                child: const ListTile(
                                  leading: Icon(
                                    Icons.person,
                                    color: Colors.black54,
                                  ),
                                  title: TextField(
                                    obscureText: false,
                                    //controller: nameControlller,
                                    decoration: InputDecoration(
                                      //labelText: 'Enter mail/number:',
                                      hintText: 'Username',
                                      hintStyle: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white60,
                                          fontFamily: 'SourceSansPro',
                                          letterSpacing: 1.5
                                      ),
                                      ),

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Expanded(
                            flex: 0,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                              child: ClayContainer(
                                depth: 30,
                                color: Colors.teal[200],
                                borderRadius: 10,
                                child: const ListTile(
                                  leading: Icon(
                                    Icons.lock,
                                    color: Colors.black54,
                                  ),
                                  title: TextField(
                                    obscureText: true,
                                    //controller: passwordController,
                                    decoration: InputDecoration(
                                      //labelText: 'Enter mail/number:',
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white60,
                                          fontFamily: 'SourceSansPro',
                                          letterSpacing: 1.5
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: TextButton(onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => const MyApp()));
                            },
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 25.0),
                                child: ClayContainer(
                                  width: 200,
                                  depth: 40,
                                  color: Colors.teal[300],
                                  borderRadius: 10,
                                  spread: 15,
                                  child: const ListTile(
                                    title: Center(
                                      child: Text('Login',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black54,
                                            fontFamily: 'OriginTech personal use',
                                            letterSpacing: 1.5
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextButton(onPressed: (){
                                                    Navigator.push(
                                                                context,
                                                        MaterialPageRoute(builder: (context) => const ForgetPassword()));
                              },
                                child: const Text('Forget Password?',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black54,
                                      fontFamily: 'OriginTech personal use',
                                      letterSpacing: 1.5
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton( onPressed: (){ Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage()));},
                            child:  const Text('Go back to HomePage',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blueGrey,
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                          ),
                        ],
                ),
              ),
            ),
          ),
        );
  }
}
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Forget Password?'),
        ),
        backgroundColor: Colors.teal[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                    child: ClayContainer(
                      depth: 30,
                      borderRadius: 10,
                      color: Colors.teal[200],
                      child: const ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.black54,
                        ),
                        title: TextField(
                          obscureText: false,
                          //controller: nameControl,
                          decoration: InputDecoration(
                            labelText: 'Enter number for otp:',
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white60,
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: TextButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const Otp()));
                  },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 25.0),
                      child: ClayContainer(
                        width: 200,
                        depth: 40,
                        color: Colors.teal[300],
                        borderRadius: 10,
                        spread: 15,
                        child: const ListTile(
                          title: Center(
                            child: Text('Send Otp',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black54,
                                  fontFamily: 'OriginTech personal use',
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
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


class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('OTP Validation'),
          ),
          backgroundColor: Colors.teal[200],
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 0,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                      child: ClayContainer(
                        depth: 30,
                        borderRadius: 10,
                        color: Colors.teal[200],
                        child: const ListTile(
                          leading: Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          title: TextField(
                            obscureText: true,
                            //controller: nameControl,
                            decoration: InputDecoration(
                              labelText: 'Enter Your OTP:',
                              hintText: 'OTP',
                              hintStyle: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white60,
                                  fontFamily: 'SourceSansPro',
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(onPressed: (){},
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 25.0),
                        child: ClayContainer(
                          width: 200,
                          depth: 40,
                          color: Colors.teal[300],
                          borderRadius: 10,
                          spread: 15,
                          child: const ListTile(
                            title: Center(
                              child: Text('Verify',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black54,
                                    fontFamily: 'OriginTech personal use',
                                    letterSpacing: 1.5
                                ),
                              ),
                            ),
                          ),
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


class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const settingsPage();
  }
}

class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  _settingsPageState createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          children: <Widget>[
            const Divider(
              height: 10,
              thickness: 2,
            ),
            // Container(
            //   color: Colors.white60,
            //   child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Expanded(
            //           child: TextButton(
            //             onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const UserInfo()));},
            //             child: const Text(
            //               'User Information',
            //               style: TextStyle(fontSize: 30, color: Colors.black),
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Container(
            //   color: Colors.white60,
            //   child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Expanded(
            //           child: TextButton(
            //             onPressed: () {},
            //             child:const Text(
            //               'Settings',
            //               style: TextStyle(fontSize: 30, color: Colors.black),
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Notifications',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Country',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Languages',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Feedback',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Advance Settings',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                ),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
          ],
        ));
  }
}



