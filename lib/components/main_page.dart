import 'package:event/all_imports.dart';

class MainPage extends StatelessWidget {
  String location;
  MainPage({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Current location',
                      style: TextStyle(color: grey),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: yellow,),
                        Text(location,style: const TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Your trip',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xffF73B55),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.teal),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
