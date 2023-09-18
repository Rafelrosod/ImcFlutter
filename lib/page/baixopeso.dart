import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaixoPesoPage extends StatefulWidget {
  const BaixoPesoPage({super.key});

  @override
  State<BaixoPesoPage> createState() => _BaixoPesoPageState();
}

class _BaixoPesoPageState extends State<BaixoPesoPage> {
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
                  "assets/imagens/baixopeso.png",
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
                        "Baixo peso\n",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "Ter um IMC na faixa de baixo peso indica que alguém está abaixo do peso saudável, embora não tão drasticamente quanto no caso do baixo peso grave. Pode ser devido a uma dieta insuficiente ou uma condição médica subjacente.",
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
                        "\nAvaliação Médica:Consulte um médico para avaliar a causa do baixo peso. É importante descobrir se há uma condição médica subjacente que esteja contribuindo para o baixo peso.\n\nDesenvolvimento de um Plano Nutricional:Trabalhe com um nutricionista ou dietista para criar um plano de alimentação que seja equilibrado e atenda às necessidades nutricionais específicas. Isso pode envolver um aumento gradual na ingestão calórica e a escolha de alimentos nutritivos\n\nExercício Moderado e Saudável:Se o baixo peso for devido à falta de exercício, considere a incorporação de atividades físicas moderadas e saudáveis em sua rotina para melhorar o apetite e promover o ganho de peso muscular.\n\nApoio Emocional e Psicológico:Se o baixo peso estiver relacionado a preocupações com a imagem corporal, estresse ou ansiedade, considere procurar apoio emocional ou psicológico para ajudar a lidar com essas questões.\n\nLembre-se de que a abordagem para lidar com o baixo peso deve ser personalizada com base nas necessidades individuais e na causa subjacente. ",
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
