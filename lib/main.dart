import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vig/binding/initial_binding.dart';
import 'package:vig/helpers/helpers.dart';
import 'package:vig/presentation/screens/screens.dart';

void main() async {
  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orient, type) {
        return GetMaterialApp(
          title: kAppName,
          debugShowCheckedModeBanner: false,
          initialBinding: InitialBinding(),
          initialRoute: '/',
          getPages: [
            GetPage(name: screenHome, page: () => const HomeScreen()),
            GetPage(name: screenChooseType, page: () => const ChooseTypeScreen()),

            GetPage(name: screenStdLogin, page: () => const StdLoginScreen()),
            GetPage(name: screenStdRegister, page: () => const StdRegisterScreeen()),

            GetPage(name: screenParentLogin, page: () => const ParentLoginScreen()),
            GetPage(name: screenParentRegister, page: () => const ParentRegisterScreen()),

            GetPage(name: screenTeacherLogin, page: () => const TeacherLoginScreen()),
            GetPage(name: screenTeacherRegister, page: () => const TeacherRegisterScreeen()),

            GetPage(name: screenStdHome, page: () => const StdHomeScreen()),
            GetPage(name: screenTchrHome, page: () => const TchrHomeScreen()),

            GetPage(name: screenStudyHome, page: () => const StdStudyHomeScreen()),

            GetPage(name: screenTeacherHome, page: () => const SupportTeacherHomeScreen()),
            GetPage(name: screenTeacherEmail, page: () => const SupportTeacherEmailScreen()),

            GetPage(name: screenStdToDO, page: () => const StdToDoScreen()),

            GetPage(name: screenGamesHome, page: () => const GamesHomeScreen()),
            GetPage(name: screenSpotLevels, page: () => const SpotLevelsScreen()),
            GetPage(name: screenMemoryLevels, page: () => const MemoryLevelsScreen()),
            GetPage(name: screenShopLevels, page: () => const ShopLevelsScreen()),



          ],
        );
      }
    );
  }
}