import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rafaapp/page/baixograve.dart';
import 'package:rafaapp/page/baixomuitograve.dart';
import 'package:rafaapp/page/baixopeso.dart';
import 'package:rafaapp/page/grauOne.dart';
import 'package:rafaapp/page/grauTree.dart';
import 'package:rafaapp/page/grauTwo.dart';
import 'package:rafaapp/page/normal.dart';
import 'package:rafaapp/page/sobrepeso.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nome = "";
  var sexo = "";
  double altura = 0;
  double peso1 = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(61, 32, 104, 212),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(20)),
                Text("Calculadora Imc",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                const SizedBox(
                  width: 50,
                ),
                const Padding(padding: EdgeInsets.all(20)),
                Text(
                  "Digite seu Nome",
                  style: GoogleFonts.aboreto(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 120),
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 235, 210, 163),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: TextField(
                    onChanged: (value) {
                      if (value.trim().length > 15) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("O nome deve ser preenchido")));
                        return;
                      } else {
                        nome = value;
                      }
                    },
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                      Icons.account_circle,
                      color: Color.fromARGB(123, 12, 53, 116),
                    )),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                Image.asset(
                  "assets/imagens/sabio.png",
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
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(15)),
                      Text("Digite seu Sexo",
                          style: GoogleFonts.abrilFatface(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 255, 255, 255))),
                      const Padding(padding: EdgeInsets.all(15)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 100),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 210, 163),
                        ),
                        padding: const EdgeInsets.all(3),
                        child: TextField(
                          onChanged: (value) {
                            if (value.trim().length != "Masculino" ||
                                value.trim().length != "Feminino") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "O Sexo deve ser preenchido corretamente")));
                              return;
                            }
                            sexo = value;
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                            Icons.arrow_drop_down_circle,
                            color: Color.fromARGB(123, 12, 53, 116),
                          )),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Text("Digite sua Altura",
                          style: GoogleFonts.abrilFatface(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 255, 255, 255))),
                      const Padding(padding: EdgeInsets.all(15)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 100),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 210, 163),
                        ),
                        padding: const EdgeInsets.all(3),
                        child: TextField(
                          onChanged: (value) {
                            if (value.trim().length > 3) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "A altura deve ser preenchida corretamente")));
                              return;
                            }
                            setState(() {
                              altura = double.parse(value);
                            });
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                            Icons.fact_check_outlined,
                            color: Color.fromARGB(123, 12, 53, 116),
                          )),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Text("Digite seu peso",
                          style: GoogleFonts.abrilFatface(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 255, 255, 255))),
                      const Padding(padding: EdgeInsets.all(15)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 100),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 235, 210, 163),
                        ),
                        padding: const EdgeInsets.all(3),
                        child: TextField(
                          onChanged: (value) {
                            if (value.trim().length > 6) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "A altura deve ser preenchida")));
                              return;
                            }
                            setState(() {
                              peso1 = double.parse(value);
                            });
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                            Icons.fitness_center,
                            color: Color.fromARGB(123, 12, 53, 116),
                          )),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Expanded(child: Container()),
                      TextButton(
                        onPressed: () {
                          double retorno = peso1 / ((altura * altura) / 10000);
                          switch (retorno) {
                            case <= 16:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BaixoMuitoGravePage()));
                            case > 16 && < 17:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BaixoGravePage()));
                            case > 17 && < 18.49:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BaixoPesoPage()));
                            case >= 18.49 && < 24.99:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NormalPage()));
                            case >= 24.99 && < 29.99:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SobrePesoPage()));
                            case >= 29.99 && < 34.99:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GrauOnePage()));
                            case >= 34.99 && < 39.99:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GrauTwoPage()));
                            case >= 40:
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GrauTreePage()));
                          }
                        },
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromRGBO(252, 118, 67, 100),
                            fixedSize: const Size(100, 60),
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255),
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            )),
                        child: Text("Calcular",
                            style: GoogleFonts.abrilFatface(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                    ],
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
