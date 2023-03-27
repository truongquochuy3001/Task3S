import 'package:flutter/material.dart';
import 'package:flutter_application_1/uis/account_page.dart';
import 'package:flutter_application_1/uis/home.dart';
import 'package:flutter_application_1/uis/home1.dart';
import 'package:flutter_application_1/uis/login.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/uis/login_page.dart';
import 'package:flutter_application_1/uis/register.dart';
import 'package:flutter_application_1/uis/splash_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://hhoaclekxbqazahsamjx.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhob2FjbGVreGJxYXphaHNhbWp4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzkzNjUzNzQsImV4cCI6MTk5NDk0MTM3NH0.RVuSQRps2UBbdcsVP3okRcHZp3HeQPKeUiqemQgC-SI',
  );
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

final client = Supabase.instance.client;

// Future<void> main() async {
//   await Supabase.initialize(
//     // TODO: Replace credentials with your own
//     url: 'https://tlevkgqiuhvnavukactx.supabase.co',
//     anonKey:
//         'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRsZXZrZ3FpdWh2bmF2dWthY3R4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzkzNjA4ODIsImV4cCI6MTk5NDkzNjg4Mn0.xyoBODaLMlFZ4xzSAk0AgcklAzrDiespd09J5_li3OY',
//   );
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: const LoginScreen(),
        );
      },
      designSize: const Size(360, 640),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Supabase Flutter',
//       theme: ThemeData.dark().copyWith(
//         primaryColor: Colors.green,
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(
//             foregroundColor: Colors.green,
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.white,
//             backgroundColor: Colors.green,
//           ),
//         ),
//       ),
//       initialRoute: '/',
//       routes: <String, WidgetBuilder>{
//         '/': (_) => const SplashPage(),
//         '/login': (_) => const LoginPage(),
//         '/account': (_) => const AccountPage(),
//       },
//     );
//   }
// }
