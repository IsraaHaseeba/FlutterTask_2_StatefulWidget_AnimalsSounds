import 'package:flutter/material.dart';

import '../utils/name_animals.dart';
import '../utils/path_icons.dart';

class SingleButton extends StatelessWidget {
  const SingleButton({
    Key? key,
    required this.name,
    required this.iconPath,
    required this.onClick,
    this.color = const Color.fromARGB(220, 79, 101, 201),
  }) : super(key: key);

  // as it is a stateless widget, we need to define fields as final. They would not change.
  final String name;
  final String iconPath;
  final Color color;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: onClick,
              style: ElevatedButton.styleFrom(primary: color),
              label: Text(name),
              icon: Image(
                image: AssetImage(iconPath),
                width: 20,
              ),
            ),
          ),
          const SizedBox(width: 7)
        ],
      ),
    );
  }
}
