import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaixoGravePage extends StatefulWidget {
  const BaixoGravePage({super.key});

  @override
  State<BaixoGravePage> createState() => _BaixoGravePageState();
}

class _BaixoGravePageState extends State<BaixoGravePage> {
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
                  "assets/imagens/baixograve.png",
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
                        "Baixo Peso Grave:",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "\n O baixo peso grave é uma condição em que o Índice de Massa Corporal (IMC) de uma pessoa está significativamente abaixo do limite considerado saudável para sua altura e idade. Isso indica uma insuficiência nutricional grave e pode ser causado por várias razões, incluindo distúrbios alimentares como a anorexia nervosa, desnutrição crônica devido à falta de ingestão adequada de alimentos, ou outras condições médicas graves.",
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
                        "\nAvaliação Médica Abrangente: A primeira e mais crítica recomendação é buscar imediatamente uma avaliação médica completa. Um profissional de saúde, como um médico ou psiquiatra, deve avaliar a condição para determinar a causa subjacente do baixo peso grave.\n\nApoio Psicológico e Psiquiátrico: Se um transtorno alimentar, como a anorexia nervosa, estiver envolvido, o paciente deve receber apoio psicológico e psiquiátrico especializado para tratar questões emocionais e comportamentais relacionadas à alimentação e à imagem corporal.\n\nTratamento das Condições Médicas Subjacentes: Identificar e tratar quaisquer condições que possam estar contribuindo para o baixo peso, como problemas gastrointestinais ou distúrbios metabólicos.\n\nO baixo peso grave é uma condição médica séria que requer uma abordagem multidisciplinar, envolvendo profissionais de saúde, apoio emocional e tratamento especializado. A recuperação é possível, mas exige tempo, compromisso e suporte contínuo.",
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
