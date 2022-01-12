import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  const CustomTextField({
    Key? key,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Digite seu CPF',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 3, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}





//  child: TextFormField(
//         //  inputFormatters: [],
//         // keyboardType: TextInputType.number,
//         decoration: InputDecoration(
//           labelText: 'CPF',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//             borderSide: const BorderSide(width: 3, color: Colors.blue),
//           ),
//         ),
//       ),
