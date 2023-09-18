import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaixoMuitoGravePage extends StatefulWidget {
  const BaixoMuitoGravePage({super.key});

  @override
  State<BaixoMuitoGravePage> createState() => _BaixoMuitoGravePageState();
}

class _BaixoMuitoGravePageState extends State<BaixoMuitoGravePage> {
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
                  "assets/imagens/baixomuitograve.png",
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
                        "Baixo Peso Muito Grave (Baixo Peso Severo):",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "\nÉ uma condição em que o Índice de Massa Corporal (IMC) de uma pessoa está significativamente abaixo do limite considerado saudável. Isso geralmente indica uma condição médica grave e pode estar associado a complicações de saúde significativas. As causas podem incluir distúrbios alimentares graves, desnutrição ou condições médicas subjacentes. ",
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
                        "\nAtendimento Médico Urgente: Procure imediatamente atendimento médico.\n\nInternação Hospitalar: Pode ser necessária hospitalização para estabilizar a condição.\n\nAvaliação e Tratamento Causa Raiz: Identifique e trate as causas subjacentes, como distúrbios alimentares ou condições médicas.\n\nSuplementação Nutricional: Pode ser necessário fornecer nutrição intravenosa ou suplementos alimentares.\n\nApoio Psicológico: Considere a terapia para abordar questões emocionais e comportamentais.\n\nAcompanhamento Médico Regular: Mantenha acompanhamento médico constante para monitorar a recuperação e prevenir recaídas.\n\nEssas recomendações são cruciais para lidar com o baixo peso severo, uma condição médica séria que requer tratamento especializado e monitoramento contínuo para garantir a melhoria da saúde e do bem-estar.",
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
