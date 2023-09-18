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
                    color: const Color.fromRGBO(252, 118, 67, 100),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    Text(
                      "Normal (Peso Saudável)",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.abrilFatface(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      "\nTer um IMC na faixa 'Normal' significa que a pessoa está dentro do peso considerado saudável para sua altura e idade. Isso indica que a quantidade de gordura corporal está dentro de uma faixa considerada saudável para a maioria das pessoas e está associada a um menor risco de doenças relacionadas ao peso, como diabetes e doenças cardíacas.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.abrilFatface(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      "\nRecomendações:",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.abrilFatface(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      "\nAlimentação Equilibrada:Mantenha uma dieta rica em frutas, vegetais, proteínas magras e grãos integrais. Evite excessos de alimentos processados, açúcares refinados e gorduras saturadas.\n\nAtividade Física Regular:Mantenha um programa de exercícios que inclua atividades aeróbicas, treinamento de força e flexibilidade. Isso ajuda a manter a massa muscular, a saúde cardiovascular e a queima de calorias\n\nExames de Saúde Regulares:Continue a fazer exames de saúde regulares para monitorar o bem-estar geral e detectar precocemente quaisquer problemas de saúde.\n\nHidratação Adequada:Mantenha-se bem hidratado, bebendo água suficiente ao longo do dia.\n\nDescanso Adequado:Priorize o sono adequado, pois o sono insuficiente pode afetar negativamente o peso e a saúde em geral.\n\nÉ importante enfatizar que manter um peso saudável é apenas um aspecto da saúde geral. O bem-estar inclui outros fatores, como a saúde mental, a qualidade de vida e a prevenção de doenças. ",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.abrilFatface(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
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
