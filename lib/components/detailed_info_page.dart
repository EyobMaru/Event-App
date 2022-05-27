import 'package:event/all_imports.dart';

class DetailedInfoPage extends StatelessWidget {
  String date;
  String month;
  String location;
  String discription;
  String word;
  String imagePath;
  String profile1;
  String profile2;
  String profile3;
  String jonedMember;
  String mapImage;

  DetailedInfoPage(
      {Key? key,
      required this.date,
      required this.month,
      required this.location,
      required this.discription,
      required this.word,
      required this.imagePath,
      required this.profile1,
      required this.profile2,
      required this.profile3,
      required this.jonedMember,
      required this.mapImage})
      : super(key: key);

  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    Widget profile(String profile) {
      return CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(profile),
        backgroundColor: Colors.transparent,
      );
    }

    var parsedNum = EveryInfo.path(jonedMember);

    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: width,
              height: height * 0.45,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      EveryInfo.path(imagePath),
                    ),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: white,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      EveryInfo.path(date),
                      style: TextStyle(
                          color: white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      EveryInfo.path(month),
                      style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Text(
                      EveryInfo.path(location),
                      style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      EveryInfo.path(discription),
                      style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      EveryInfo.path(word),
                      style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: white,
                        ),
                        Text(
                          EveryInfo.path(location),
                          style: TextStyle(color: white, fontSize: 17),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.06, top: height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        profile(
                          EveryInfo.path(profile1),
                        ),
                        profile(
                          EveryInfo.path(profile2),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          '+' + parsedNum + ' this event',
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: 1.7),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Text(
                      'Hello everyone We wait you to join with us.',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.7,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'We need you to participate in our event & let\'s join there.',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.7,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      height: height * 0.25,
                      width: width * 0.87,
                      decoration: BoxDecoration(
                          border: Border.all(color: blue,width: 0.07),
                        image: DecorationImage(
                            image: AssetImage(EveryInfo.path(mapImage)), fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width*0.10,right: width*0.15,top: height*0.03),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: black,
                          minimumSize: Size.fromHeight(height*0.06),
                          // NEW
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Join now',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
