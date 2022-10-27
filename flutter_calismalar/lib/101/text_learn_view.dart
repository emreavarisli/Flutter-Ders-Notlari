import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget{
  TextLearnView({super.key, this.userName});
  final String name = 'Veli';

  final String? userName;

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome $name ${name.length}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    wordSpacing: 2,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                    color: Colors.lime,
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Welcome $name ${name.length}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: ProjectStyles.welcomeStyle,
              ),
                Text(
                'Welcome $name ${name.length}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ProjectColors.welcomeColor)
                ),
                Text(userName ?? ''),
                Text(ProjectKeys.welcome),
            ],
          )),
    );
  }
}

class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  static String welcome = "Merhaba";
}