import 'package:event/all_imports.dart';

class MainPage extends StatelessWidget {
  String location;
  MainPage({Key? key, required this.location}) : super(key: key);
  var size,height,width;

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
            padding: EdgeInsets.only(left: width*0.08,top: height*0.06,right: width*0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Current location',
                          style: TextStyle(color: grey,fontSize: 18),

                        ),
                        SizedBox(height: height*0.005,),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: yellow,size: 27,),
                            Text(location,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                          ],
                        ),

                      ],
                    )
                  ],
                ),
                Container(
                  width: width*0.84,
                  height: height*0.1,
                  color: const Color(0xfff9f9fa),
                  child: SizedBox(
                    // width: width*0.6,
                    child: Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Padding(
                        padding: EdgeInsets.only(left: width*0.03,right: width*0.03),
                        child: TextField(
                          cursorColor: Colors.green,

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(height*0.022),
                            enabledBorder: InputBorder.none,
                            hoverColor: Colors.white,
                            focusedBorder: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search,color: yellow, size: height*0.025,),
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
                  height: height*0.75,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                     listOfEvents('08', 'March', 'Ayer Tena', 'International Womens day', 'Come and Join us', 'assets/images/event5.webp', 'assets/images/profile3.jpeg', 'assets/images/profile5.jpeg', 'assets/images/profile4.jpeg', '145 Joined'),
                      listOfEvents('17', 'June', '4 kilo', 'Global Book Publishing', 'Come and Join Us', 'assets/images/book.jpg','assets/images/profile1.jpeg' , 'assets/images/profile2.jpeg', 'assets/images/profile3.jpeg', '27 Joined'),
                      listOfEvents('29', 'Sep', 'Bole ', 'Day Light Africa Week', 'Come and Join Us', 'assets/images/africa.jpg', 'assets/images/profile2.jpeg', 'assets/images/profile5.jpeg', 'assets/images/profile4.jpeg', '345 Joined'),
                      listOfEvents('04', 'May', 'Shiromeda', 'Global Youth Day', 'Come and Join Us', 'assets/images/youth.webp', 'assets/images/profile6.jpeg', 'assets/images/profile2.jpeg', 'assets/images/profile5.jpeg', '09 Joined')
                      
                      
                      
                      
                      
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
