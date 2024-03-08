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
      gluestackCustomConfig: GluestackCustomConfig(button: {
        'borderRadius': '\$md',
        'backgroundColor': '\$red500',
        'variants': {
          'action': {
            'primary': {
              'bg': '\$violet600',
              '_dark': {
                'bg': '\$violet500',
                'borderColor': '\$primary700',
                ':hover': {
                  'bg': '\$primary500',
                  'borderColor': '\$primary400',
                }
              }
            }
          }
        }
      }),
      gluestackTokenConfig: GluestackTokenConfig(
        gsColorsToken: const GSColorsToken(
          primary0: Colors.red,
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
      child: GSApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        darkTheme: GSThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xFF171717)),
        debugShowCheckedModeBanner: false,
        title: 'GlueStack UI',
        home: const HomeScreen(),
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
