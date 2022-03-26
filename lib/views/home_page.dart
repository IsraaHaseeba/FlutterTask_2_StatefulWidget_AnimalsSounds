import 'package:animals/utils/name_animals.dart';
import 'package:animals/utils/path_audios.dart';

import 'package:animals/utils/path_image.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/animal_image.dart';
import '../components/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image = PathImage.animals;
  static AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  String audio = PathAudio.lion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          NameAnimals.animals.toUpperCase(),
          style: GoogleFonts.adamina(),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(image: AssetImage(PathImage.pawprint))),
        ],
      ),
      body: SafeArea(
        child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // image
                AnimalImage(image: image),

                // divider
                const Divider(height: 1, color: Colors.black, thickness: 2),

                // buttons
                Buttons(callBack: (image, audio) async {
                  setState(() {
                    this.image = image;
                  });
                  audioPlayer.stop();
                  audioPlayer = await audioCache.play(audio);
                }),
              ],
            )),
      ),
    );
  }
}
