import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrauOnePage extends StatefulWidget {
  const GrauOnePage({super.key});

  @override
  State<GrauOnePage> createState() => _GrauOnePageState();
}

class _GrauOnePageState extends State<GrauOnePage> {
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
                  "assets/imagens/grau1.png",
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
                  child: Column(children: [
                    Text("Obesidade Grau 1 (Obesidade Moderada)",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    Text(
                        "\nObesidade moderada. Isso significa que há um excesso significativo de gordura corporal em relação ao músculo e pode aumentar o risco de várias condições de saúde, incluindo diabetes tipo 2, doenças cardíacas, apneia do sono e hipertensão.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    Text("\nRecomendações:",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    Text(
                        "\nConsulta a um Profissional de Saúde: Consulte um médico ou um especialista em obesidade para avaliar os riscos à saúde e criar um plano de gerenciamento personalizado.\n\nAlimentação Saudável: Adote uma dieta equilibrada que inclua alimentos ricos em nutrientes, como frutas, vegetais, proteínas magras, grãos integrais e gorduras saudáveis. Evite alimentos processados, açúcares refinados e gorduras saturadas.\n\nAtividade Física Regular: Inclua exercícios físicos regularmente em sua rotina, incluindo atividades aeróbicas e treinamento de força, para ajudar a queimar calorias e melhorar a saúde cardiovascular.\n\nApoio Psicológico e Comportamental: Considere a terapia comportamental para lidar com questões emocionais e comportamentais relacionadas à alimentação e ao peso.\n\nPlano de Gerenciamento da Obesidade: Trabalhe com um médico, nutricionista e/ou treinador físico para desenvolver um plano de gerenciamento da obesidade que inclua metas realistas de perda de peso e um cronograma.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 255, 255, 255))),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
