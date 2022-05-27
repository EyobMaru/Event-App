import 'package:event/all_imports.dart';

class DetailedInfoPage extends StatelessWidget {
  const DetailedInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: yellow,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
