import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrauTwoPage extends StatefulWidget {
  const GrauTwoPage({super.key});

  @override
  State<GrauTwoPage> createState() => _GrauTwoPageState();
}

class _GrauTwoPageState extends State<GrauTwoPage> {
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
                  "assets/imagens/grau2.png",
                  width: 90,
                ),
                Container(
                  width: 400,
                  height: 550,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(252, 118, 67, 100),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "Obesidade Grau 2 (Obesidade Severa)",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "\nA obesidade grau 2 indica um IMC mais alto, na faixa de obesidade severa. Essa condição está associada a um maior risco de complicações médicas graves, como diabetes avançado, doenças cardíacas, apneia do sono grave e problemas articulares.",
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
                        "\nConsulta Especializada: Procure um especialista em obesidade ou um médico experiente em tratamentos para a obesidade.\n\nPlano de Tratamento Personalizado: Trabalhe com profissionais de saúde para desenvolver um plano de tratamento personalizado que inclua orientação nutricional, atividade física, monitoramento médico e opções de tratamento médico, se apropriado.\n\nAvaliação Nutricional: Um nutricionista ou dietista registrado pode ajudá-lo a desenvolver um plano de alimentação equilibrado e adequado às suas necessidades específicas. Isso pode incluir a definição de metas calóricas, monitoramento de macronutrientes e planejamento de refeições.\n\nLidar com a obesidade grau 2 requer um compromisso significativo com a mudança de estilo de vida e um apoio contínuo de profissionais de saúde e pessoas próximas. É importante lembrar que a perda de peso saudável e sustentável é um processo gradual e que o objetivo principal deve ser a melhoria da saúde geral e a prevenção de complicações associadas à obesidade. ",
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
