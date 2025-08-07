import 'package:flutter/material.dart';
import 'package:gorod_legend/theme/theme_data.dart';
import 'package:gorod_legend/widgets/app_buttons.dart';

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
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AccentButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.main,
                        title: const Text('Accent Main'),
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                      AccentButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.minor,
                        title: const Text('Accent Minor'),
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                      AccentButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.outline,
                        title: Text('Accent Outline'),
                        onTap: () => print('Hi'),
                      ),

                      const SizedBox(height: 10),
                      AccentButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.minor,
                        disabled: true,
                        title: const Text('Accent Main disabled'),
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                      AccentButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.outline,
                        title: const Text('Accent Outline Disabled'),
                        disabled: true,
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NeutralButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.main,
                        title: const Text('Accent Main'),
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                      NeutralButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.minor,
                        title: const Text('Accent Minor'),
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                      NeutralButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.outline,
                        title: Text('Accent Outline'),
                        onTap: () => print('Hi'),
                      ),

                      const SizedBox(height: 10),
                      NeutralButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.minor,
                        disabled: true,
                        title: const Text('Accent Main disabled'),
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                      NeutralButton(
                        btnSize: BtnSize.small,
                        btnStyle: BtnStyle.outline,
                        title: const Text('Accent Outline Disabled'),
                        disabled: true,
                        onTap: () => print('Hi'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LightButton(
                    btnSize: BtnSize.small,
                    btnStyle: BtnStyle.main,
                    title: const Text('Accent Main'),
                    onTap: () => print('Hi'),
                  ),
                  const SizedBox(height: 10),
                  LightButton(
                    btnSize: BtnSize.small,
                    btnStyle: BtnStyle.minor,
                    title: const Text('Accent Minor'),
                    onTap: () => print('Hi'),
                  ),
                  const SizedBox(height: 10),
                  LightButton(
                    btnSize: BtnSize.small,
                    btnStyle: BtnStyle.outline,
                    title: Text('Accent Outline'),
                    onTap: () => print('Hi'),
                  ),

                  const SizedBox(height: 10),
                  LightButton(
                    btnSize: BtnSize.small,
                    btnStyle: BtnStyle.minor,
                    disabled: true,
                    title: const Text('Accent Main disabled'),
                    onTap: () => print('Hi'),
                  ),
                  const SizedBox(height: 10),
                  LightButton(
                    btnSize: BtnSize.small,
                    btnStyle: BtnStyle.outline,
                    title: const Text('Accent Outline Disabled'),
                    disabled: true,
                    onTap: () => print('Hi'),
                  ),
                  const SizedBox(height: 10),
                  LightButton(
                    btnSize: BtnSize.small,
                    btnStyle: BtnStyle.tertiary,
                    title: const Text('Accent Outline tertiary'),
                    disabled: true,
                    onTap: () => print('Hi'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
