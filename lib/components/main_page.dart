import 'package:event/all_imports.dart';

class MainPage extends StatelessWidget {
  String location;

  MainPage({Key? key, required this.location}) : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: width * 0.08, top: height * 0.06, right: width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Current location',
                          style: TextStyle(color: grey, fontSize: 18),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: yellow,
                              size: 27,
                            ),
                            Text(
                              location,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: width * 0.84,
                  height: height * 0.1,
                  color: const Color(0xfff9f9fa),
                  child: SizedBox(
                    // width: width*0.6,
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.03, right: width * 0.03),
                        child: TextField(
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(height * 0.022),
                            enabledBorder: InputBorder.none,
                            hoverColor: Colors.white,
                            focusedBorder: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: yellow,
                              size: height * 0.025,
                            ),
                            hintText: 'Search for event',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.75,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailedInfoPage(
                                        date: 'date1',
                                        month: 'month1',
                                        location: 'location1',
                                        discription: 'typeOfEvent1',
                                        word: 'come1',
                                        imagePath: 'mainImage1',
                                        profile1: '1profile1',
                                        profile2: '1profile2',
                                        profile3: '1profile3',
                                        jonedMember: 'join1',
                                        mapImage: 'map1',
                                    ),
                              ),
                            );
                          },
                          child: listOfEvents(
                              EveryInfo.path('date1'),
                              EveryInfo.path('month1'),
                              EveryInfo.path('location1'),
                              EveryInfo.path('typeOfEvent1'),
                              EveryInfo.path('come1'),
                              EveryInfo.path('mainImage1'),
                              EveryInfo.path('1profile1'),
                              EveryInfo.path('1profile2'),
                              EveryInfo.path('1profile3'),
                              EveryInfo.path('join1'))),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  DetailedInfoPage(
                                    date: 'date2',
                                    month: 'month2',
                                    location: 'location2',
                                    discription: 'typeOfEvent2',
                                    word: 'come2',
                                    imagePath: 'mainImage2',
                                    profile1: '2profile1',
                                    profile2: '2profile2',
                                    profile3: '2profile3',
                                    jonedMember: 'join2',
                                    mapImage: 'map2',
                                  ),
                            ),
                          );
                        },
                        child: listOfEvents(
                            EveryInfo.path('date2'),
                            EveryInfo.path('month2'),
                            EveryInfo.path('location2'),
                            EveryInfo.path('typeOfEvent2'),
                            EveryInfo.path('come2'),
                            EveryInfo.path('mainImage2'),
                            EveryInfo.path('2profile1'),
                            EveryInfo.path('2profile2'),
                            EveryInfo.path('2profile3'),
                            EveryInfo.path('join2')),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  DetailedInfoPage(
                                    date: 'date3',
                                    month: 'month3',
                                    location: 'location3',
                                    discription: 'typeOfEvent3',
                                    word: 'come3',
                                    imagePath: 'mainImage3',
                                    profile1: '3profile1',
                                    profile2: '3profile2',
                                    profile3: '3profile3',
                                    jonedMember: 'join3',
                                    mapImage: 'map3',
                                  ),
                            ),
                          );
                        },
                        child: listOfEvents(
                            EveryInfo.path('date3'),
                            EveryInfo.path('month3'),
                            EveryInfo.path('location3'),
                            EveryInfo.path('typeOfEvent3'),
                            EveryInfo.path('come3'),
                            EveryInfo.path('mainImage3'),
                            EveryInfo.path('3profile1'),
                            EveryInfo.path('3profile2'),
                            EveryInfo.path('2profile3'),
                            EveryInfo.path('join3')),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  DetailedInfoPage(
                                    date: 'date4',
                                    month: 'month4',
                                    location: 'location4',
                                    discription: 'typeOfEvent4',
                                    word: 'come4',
                                    imagePath: 'mainImage4',
                                    profile1: '4profile1',
                                    profile2: '4profile2',
                                    profile3: '4profile3',
                                    jonedMember: 'join4',
                                    mapImage: 'map4',
                                  ),
                            ),
                          );
                        },
                        child: listOfEvents(
                            EveryInfo.path('date4'),
                            EveryInfo.path('month4'),
                            EveryInfo.path('location4'),
                            EveryInfo.path('typeOfEvent4'),
                            EveryInfo.path('come4'),
                            EveryInfo.path('mainImage4'),
                            EveryInfo.path('4profile1'),
                            EveryInfo.path('4profile2'),
                            EveryInfo.path('4profile3'),
                            EveryInfo.path('join4')),
                      ),
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
