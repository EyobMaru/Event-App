import 'package:event/all_imports.dart';
import 'package:event/components/main_page.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/': (context) => Splash(),
        '/main': (context) => MainPage(location: 'Bole, Rwanda'),
        // '/detail': (context) => DetailedInfoPage(),
      },
    ),
  );
}

// class MainApp extends StatelessWidget {
//   const MainApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Splash();
//   }
// }
