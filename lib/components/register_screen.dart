import 'package:event/all_imports.dart';
import 'package:event/components/main_page.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    Widget images({required double Imagewidth, required double Imageheight, required String imagePath}) {
      return Container(
        width: width * Imagewidth,
        height: height * Imageheight,
        decoration: BoxDecoration(
            border: Border.all(width: 3,color: white),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height*0.09),
                  child: const Text(
                    'Find Interested',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1),
                  ),
                ),
                const Text(
                  'Event to Join',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*0.02,bottom: height*0.005),
                  child: Text(
                    'We Share all events like charity,',
                    style: TextStyle(color: grey, letterSpacing: 1.3),
                  ),
                ),
                Text(
                  'workshop,blood drive,etc ',
                  style: TextStyle(color: grey, letterSpacing: 1.3),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width*0.07),
                        child: images(
                            Imagewidth: 0.15,
                            Imageheight: 0.08,
                            imagePath: 'assets/images/event1.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.15),
                        child: images(
                            Imagewidth: 0.10,
                            Imageheight: 0.05,
                            imagePath: 'assets/images/event2.jpg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*0.07),
                  child: Center(
                    child: images(
                        Imagewidth: 0.25,
                        Imageheight: 0.1,
                        imagePath: 'assets/images/event3.jpg'),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width*0.55,top: height*0.04),
                      child: images(
                          Imagewidth: 0.16,
                          Imageheight: 0.07,
                          imagePath: 'assets/images/event5.webp'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: width*0.07),
                  child: Row(
                    children: [
                      images(
                          Imagewidth: 0.16,
                          Imageheight: 0.07,
                          imagePath: 'assets/images/event4.jpg'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.15,top: height*0.12,left: width*0.07),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: black,
                      minimumSize: Size.fromHeight(height*0.08),
                      // NEW
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MainPage(location: 'Bole,Rwanda'),
                        ),
                            (route) => false,
                      );
                    },
                    child: const Text(
                      'Find Events',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width*0.14,top: height*0.012),
                  child: Row(
                    children: [
                      Text('Do you want premium account? ',style: TextStyle(color: grey),),
                      Text('Sign Up',style: TextStyle(color: yellow,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
