import 'package:cpf_validator/controller/validator_controller.dart';
import 'package:cpf_validator/model/cpf_model.dart';
import 'package:flutter/material.dart';
import 'components/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ValidatorController(CpfModel());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextField(
          controller: controller.textController,
          onChanged: (value) {},
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              controller.validate();
              controller.textController.clear();
            });
          },
          child: const Text('Validar CPF'),
        ),
        const SizedBox(
          height: 50,
        ),
        Visibility(
          visible: controller.valid.isNotEmpty,
          child: Text(
            controller.valid,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}


















// class CpfMask extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     if (!RegExp(r'^([\d-.]+)?$').hasMatch(newValue.text)) {
//       return oldValue;
//     }
//     var cpf = newValue.text;
//     final characters = cpf.characters.toList();
//     var formatted = '';

//     for (var i = 0; i < characters.length; i++) {
//       if (i < 3) {
//         formatted += characters[i];
//       } else if (i == 3) {
//         formatted += '.';
//         formatted += characters[i];
//       }
//     }
//     return newValue.copyWith(
//       text: formatted,
//       selection: TextSelection.fromPosition(
//         TextPosition(offset: formatted.length),
//       ),
//     );
//   }
// }
