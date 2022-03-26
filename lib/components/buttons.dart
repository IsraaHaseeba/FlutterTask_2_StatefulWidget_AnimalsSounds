import 'package:animals/components/single_animal_button.dart';
import 'package:animals/utils/name_animals.dart';
import 'package:animals/utils/path_audios.dart';
import 'package:animals/utils/path_icons.dart';
import 'package:animals/utils/path_image.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.callBack}) : super(key: key);
  final Function(String image, String audio) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 7),
        child: Column(
          children: [
            // row 1
            Row(
              children: [
                SingleButton(
                    name: NameAnimals.lion,
                    iconPath: PathIcons.lion,
                    onClick: () {
                      callBack(PathImage.lion, PathAudio.lion);
                    }),
                SingleButton(
                    name: NameAnimals.cat,
                    iconPath: PathIcons.cat,
                    color: const Color.fromARGB(255, 221, 108, 99),
                    onClick: () {
                      callBack(PathImage.cat, PathAudio.cat);
                    }),
                SingleButton(
                    name: NameAnimals.cheetah,
                    iconPath: PathIcons.cheetah,
                    onClick: () {
                      callBack(PathImage.cheetah, PathAudio.cheetah);
                    })
              ],
            ),
            // row 2
            Row(
              children: [
                SingleButton(
                    name: NameAnimals.crocodile,
                    iconPath: PathIcons.crocodile,
                    color: const Color.fromARGB(255, 221, 108, 99),
                    onClick: () {
                      callBack(PathImage.crocodile, PathAudio.crocodile);
                    }),
                SingleButton(
                  name: NameAnimals.dog,
                  iconPath: PathIcons.dog,
                  onClick: () {
                    callBack(PathImage.dog, PathAudio.dog);
                  },
                ),
                SingleButton(
                    name: NameAnimals.elephant,
                    iconPath: PathIcons.elephant,
                    color: const Color.fromARGB(255, 221, 108, 99),
                    onClick: () {
                      callBack(PathImage.elephant, PathAudio.elephant);
                    }),
              ],
            ),
            // row 3
            Row(
              children: [
                SingleButton(
                    name: NameAnimals.giraffe,
                    iconPath: PathIcons.giraffe,
                    onClick: () {
                      callBack(PathImage.giraffe, PathAudio.giraffe);
                    }),
                SingleButton(
                    name: NameAnimals.parrot,
                    iconPath: PathIcons.parrot,
                    color: const Color.fromARGB(255, 221, 108, 99),
                    onClick: () {
                      callBack(PathIcons.parrot, PathAudio.parrot);
                    }),
                SingleButton(
                    name: NameAnimals.wolf,
                    iconPath: PathIcons.wolf,
                    onClick: () {
                      callBack(PathImage.wolf, PathAudio.wolf);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
