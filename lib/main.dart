import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/order_page.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GluestackProvider(
      gluestackTokenConfig: GluestackTokenConfig(
        gsColorsToken: const GSColorsToken(
          textLight700: Colors.black,
          // info700: Colors.white,
          // info600: Colors.white,
          // info400: Colors.white,
          // primary0: Colors.purple,
          // backgroundLight800: Colors.black,
          // backgroundDark400: Color(0xffE11D48),
        ),
        gsRadiiToken: const GSRadiiToken(
          $sm: 0,
          $md: 10,
          $lg: 2,
          $xl: 6,
        ),
        gsFontSizeToken: const GSFontSizeToken(
          $sm: 12,
          $md: 14,
          $lg: 96,
          $xl: 18,
        ),
      ),
      child: const GSApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        // darkTheme: GSThemeData(
        //   brightness: Brightness.dark,
        // ),
        title: 'GlueStack UI',
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Center(
          child: GSButton(
            size: GSButtonSizes.$lg,
            style: GSStyle(borderRadius: 10),
            variant: GSButtonVariants.outline,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderPage()),
              );
            },
            child: const Text('Refund Order Page'),
          ),
        ),
      ],
    );
  }
}
