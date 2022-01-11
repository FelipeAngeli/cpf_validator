class CpfModel {
  bool isValid(String cpf) {
    if (cpf.length != 11) {
      return false;
    }
    return validate(cpf, 9) && validate(cpf, 10);
  }

  bool validate(String cpf, int length) {
    int sum = 0;
    for (var digit = 0; digit < length; digit++) {
      int cpfDigit = int.parse(cpf[digit]);
      sum += cpfDigit * (length + 1 - digit);
    }
    int result = ((sum * 10) % 11) == 10 ? 0 : ((sum * 10) % 11);
    return result == int.parse(cpf[length]);
  }
}















// abstract class PersonCpf {
//   bool validateCpf(String cpf);
// }

// class CpfModel implements PersonCpf{
//   bool _resto(int digito, String cpf) {
//     int soma = 0;
//     //Primeiramente multiplica-se os 9 primeiros dígitos pela sequência decrescente de números de 10 à 2 e soma os resultados.
//     //123/ 456/ 789 (1-2)
//     for(var x = 0; x <= (digito - 2);){
//       for(var i = digito; i >= 2; i-- ){
//         soma += (int.parse(cpf[x]) * i);
//         x++;
//       }
//     }
//     int resto = ((soma * 10) % 11);

//     if(resto == 10) resto = 0;

//     return (resto == int.parse(cpf[digito - 1]));
//   }

//   @override
//   bool validateCpf(String cpf) {

//   }
// }

// class CpfModel {
//   final String cpf;
//   final int digito;

//   CpfModel(
//     this.cpf,
//     this.digito,
//   );

//   bool resto() {
//     int soma = 0;
//     for (var x = 0; x <= (digito - 2);) {
//       for (var i = digito; i >= 2; i--) {
//         soma += int.parse(cpf[x]) * i;
//         x++;
//       }
//     }
//     int resto = ((soma * 10) % 11);
//     if (resto == 10) resto = 0;
//     return (resto == int.parse(cpf[digito - 1]));
//   }
// }
