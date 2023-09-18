import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrauTreePage extends StatefulWidget {
  const GrauTreePage({super.key});

  @override
  State<GrauTreePage> createState() => _GrauTreePageState();
}

class _GrauTreePageState extends State<GrauTreePage> {
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
                const Padding(padding: EdgeInsets.all(20)),
                Text("Seu peso Ideal é : ",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 255, 255, 255))),
                const SizedBox(
                  width: 50,
                ),
                const Padding(padding: EdgeInsets.all(15)),
                Image.asset(
                  "assets/imagens/grau3.png",
                  width: 90,
                ),
                Container(
                  width: 400,
                  height: 550,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(252, 118, 67, 100),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        "Obesidade Grau 3 (Obesidade Mórbida)",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "\nA obesidade grau 3, também conhecida como obesidade mórbida, é a forma mais grave de obesidade. O IMC está muito acima do limite saudável, e as complicações médicas associadas são significativas, incluindo risco elevado de doenças cardíacas, diabetes avançado, apneia do sono grave, problemas articulares e outras condições graves.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "Recomendações:",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "\nAvaliação Médica Abrangente: Busque imediatamente uma avaliação médica com um especialista em obesidade mórbida ou cirurgião bariátrico. A obesidade grau 3 é uma condição séria que requer atenção médica especializada.\n\nEducação sobre Alimentação: Eduque-se sobre hábitos alimentares saudáveis, aprenda a identificar gatilhos emocionais para a alimentação inadequada e desenvolva estratégias para lidar com esses desafios.\n\nAtividade Física Adaptada: Um programa de exercícios adaptado às suas capacidades físicas e necessidades deve ser desenvolvido sob supervisão de um treinador físico ou fisioterapeuta.\n\nEstabelecimento de Metas Realistas: Defina metas realistas e a longo prazo para a perda de peso e a melhoria da saúde geral. A obesidade grau 3 é uma condição crônica que requer uma abordagem de tratamento de longo prazo.\n\nÉ importante lembrar que a obesidade mórbida é uma condição séria e complexa que requer um tratamento multidisciplinar e acompanhamento constante",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
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
