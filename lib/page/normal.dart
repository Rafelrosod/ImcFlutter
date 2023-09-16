import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalPage extends StatefulWidget {
  const NormalPage({super.key});

  @override
  State<NormalPage> createState() => _NormalPageState();
}

class _NormalPageState extends State<NormalPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(61, 32, 104, 212),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                Text("Seu peso Ideal é : ",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                const SizedBox(
                  width: 50,
                ),
                const Padding(padding: EdgeInsets.all(15)),
                Image.asset(
                  "assets/imagens/normal.png",
                  width: 90,
                ),
                Container(
                  width: 400,
                  height: 550,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                      center: Alignment(0, 0),
                      radius: 0.8,
                      colors: <Color>[
                        Color.fromRGBO(252, 118, 67, 100),
                        Color.fromARGB(255, 255, 255, 255),
                      ],
                      stops: <double>[1, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 235, 210, 163),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
