import 'package:flutter/material.dart';
import 'package:personal_web/provider/app_provider.dart';
import 'package:personal_web/provider/drawer_provider.dart';
import 'package:personal_web/provider/scroll_provider.dart';
import 'package:personal_web/sections/main/main_section.dart';
import 'package:personal_web/utils/strings.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:personal_web/configs/core_theme.dart' as theme;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: Consumer<AppProvider>(
        builder: (context, value, _) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatefulWidget {
  final AppProvider provider;
  const MaterialChild({Key? key, required this.provider}) : super(key: key);

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {
  void initAppTheme() {
    final appProviders = AppProvider.state(context);
    appProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.APP_NAME,
      theme: theme.themeLight,
      darkTheme: theme.themeDark,
      themeMode: widget.provider.themeMode,
      initialRoute: "/",
      routes: {
        "/": (context) => const MainPage(),
      },
    );
  }
}
