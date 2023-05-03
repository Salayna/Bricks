import 'package:flutter/material.dart';


class {{featureName.pascalCase()}}Page extends StatefulWidget {
  const {{featureName.pascalCase()}}Page({super.key});

  @override
  State<{{featureName.pascalCase()}}Page> createState() => _{{featureName.pascalCase()}}PageState();
}


class _{{featureName.pascalCase()}}PageState extends State<{{featureName.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Placeholder(),
    );
  }
}
