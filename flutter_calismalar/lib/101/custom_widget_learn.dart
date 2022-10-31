import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Center (child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(width: MediaQuery.of(context).size.width, child: CustomFootButton(title: title, onPressed: () {  },)),
        )),
        const SizedBox(height: 100),
        CustomFootButton(title: title, onPressed: () {  }),
      ],
    ));
  }
}

class _ColorsUtiliyt{
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}
class _PaddingUtility{
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget with _ColorsUtiliyt, _PaddingUtility{
  CustomFootButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: redColor, shape: const StadiumBorder()),
        onPressed: onPressed,
          child: Padding(
            padding: normal2xPadding,
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
            ),
          ),
        );
  }
}
