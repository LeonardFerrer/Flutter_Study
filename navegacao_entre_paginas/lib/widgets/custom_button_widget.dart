import 'package:flutter/material.dart';

class CustomButoonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool disable;
  double? textSize;

  /// disable for true, desabilita o botão
  CustomButoonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    this.disable = false,
    this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disable ? null : onPressed,
      child: Text(title),
      style: ButtonStyle(
        // Moda a cor do botão de acordo com o estado do botão
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          // Se o botão estiver desabilitado, ele ficará vermelho
          if (states.contains(MaterialState.disabled)) return Colors.red;

          // Se o botão for pressioando, ele ficará azul
          if (states.contains(MaterialState.pressed)) return Colors.blue;

          // Se nenhuma das ações acontecer, ele manterá sua cor verde
          return Colors.green;
        }),

        // Define o corpo do botão sem relação com o stado
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),

        // Define o tamanho da Letra do `title` de acordo com o estado do botão
        textStyle: MaterialStateProperty.resolveWith((states) {
          // Se o botão for presioando, a fonte dobrará de tamanho
          if (states.contains(MaterialState.pressed)) {
            return TextStyle(
              fontSize: textSize != null ? textSize! * 2 : 28,
            );
          }

          // Se nenhuma das ações acontecer, tamanho da fonte continua
          return TextStyle(
            fontSize: textSize,
          );
        }),
      ),
    );
  }
}
