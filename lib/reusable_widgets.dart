import 'package:event/all_imports.dart';

class listOfEvents extends StatelessWidget {
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

  listOfEvents(
  this.date, this.month, this.location, this.discription, this.word,this.imagePath,this.profile1,this.profile2, this.profile3,this.jonedMember,
      {Key? key})
      : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    Widget profile(String profile){
      return
      CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(profile),
        backgroundColor: Colors.transparent,
      );
    }

    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.04),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width * 0.83,
            height: height * 0.25,
            // color: Colors.lightBlueAccent,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 1.3),
                  ),
                  Text(
                    month,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1.3),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1.3),
                  ),
                  Text(
                    discription,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1.3),
                  ),
                  Text(
                    word,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1.3),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            letterSpacing: 1.3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Text(
                jonedMember,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: Row(
                children: [
                  profile(profile1),
                  profile(profile2),
                  profile(profile3),
                  SizedBox(
                    height: height * 0.02,
                    width: height * 0.02,
                    child: const Center(
                        child: Text(
                      '+',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          ),
                    )),
                  )
                ],
              ),
            ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
