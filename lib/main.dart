import 'package:flutter/material.dart';
import 'package:gorod_legend/theme/theme_data.dart';
import 'package:gorod_legend/widgets/app_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                icon: Icons.add,
                iconAlignment: IconAlignment.start,
                type: BtnType.accent,
                style: BtnStyle.main,
                title: Text('Hello World'),
                onTap: () => print('hi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
