import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;

  const RegisterTextField({
    Key? key,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class RegisterTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final bool obscureText;

//   const RegisterTextField({
//     Key? key,
//     required this.controller,
//     required this.obscureText,
//   }) : super(key: key);

//   final hstyle = const TextStyle(
//     color: Color.fromARGB(255, 192, 192, 192),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: TextField(
//         controller: controller,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(50),
//             borderSide: const BorderSide(
//               width: 0,
//               color: Color(0xFF464D58),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(50),
//             borderSide: const BorderSide(
//               width: 0,
//               color: Color(0xFF464D58),
//             ),
//           ),
//           fillColor: const Color(0xFF464D58),
//           filled: true,
//         ),
//       ),
//     );
//   }
// }
