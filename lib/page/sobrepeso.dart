import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SobrePesoPage extends StatefulWidget {
  const SobrePesoPage({super.key});

  @override
  State<SobrePesoPage> createState() => _SobrePesoPageState();
}

class _SobrePesoPageState extends State<SobrePesoPage> {
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
                  "assets/imagens/sobrepeso.png",
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
                        "Sobrepeso",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "\nTer um IMC na faixa de 'Sobrepeso' significa que a pessoa está acima do peso considerado saudável para sua altura e idade. Isso indica que há um excesso de gordura corporal em relação ao músculo e pode aumentar o risco de desenvolver condições médicas relacionadas ao peso, como diabetes tipo 2, hipertensão e doenças cardiovasculares.",
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
                        "\nConsulte um Profissional de Saúde: A primeira recomendação é consultar um médico ou um profissional de saúde para discutir sua situação individual, avaliar os riscos à saúde e criar um plano de gerenciamento adequado.\n\nDesenvolva um Plano de Perda de Peso: Se a perda de peso for apropriada, trabalhe com um médico, nutricionista ou dietista para desenvolver um plano de perda de peso saudável e realista. A perda de peso deve ser gradual e sustentável.\n\nAlimentação Balanceada: Adote uma dieta equilibrada que inclua alimentos ricos em nutrientes, como frutas, vegetais, proteínas magras, grãos integrais e gorduras saudáveis. Reduza o consumo de alimentos processados, açúcares refinados e gorduras saturadas.\n\nÉ importante lembrar que a perda de peso eficaz e duradoura envolve mudanças sustentáveis no estilo de vida, não dietas radicais ou soluções de curto prazo. O foco deve estar na promoção da saúde e no estabelecimento de hábitos de vida saudáveis a longo prazo, em vez de apenas na perda de peso.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.abrilFatface(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      )
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
