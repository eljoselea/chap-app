import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../widgets/labels.dart';
import '../widgets/logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Logo(titulo: 'Messenger'),
                  __Form(),
                  Labels(ruta: 'register',titulo: 'No tienes una cuenta?', subtitulo: 'Crea una cuenta ahora!'),
                  Text(
                    'Terms and conditions',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class __Form extends StatefulWidget {
  @override
  ___FormState createState() => ___FormState();
}

class ___FormState extends State<__Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            CustomInput(
              icon: Icons.mail_outline,
              placeholder: 'Correo',
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl,
            ),
            CustomInput(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              textController: passCtrl,
              isPassword: true,
            ),
            //TODO crear boton
            BotonAzul(
                text: 'Ingrese',
                onPressed: () {
                  print('emailCtrl.text');
                  print(passCtrl.text);
                }),
          ],
        ));
  }
}
