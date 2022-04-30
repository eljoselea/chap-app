import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../widgets/labels.dart';
import '../widgets/logo.dart';

class RegisterPage extends StatelessWidget {
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
                  Logo(titulo: 'Registro'),
                  __Form(),
                  Labels(ruta: 'login',titulo: 'Ya tienes una cuenta?', subtitulo: 'Ingresa ahora',),
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
  final nameCtrl = TextEditingController();
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
              icon: Icons.perm_identity,
              placeholder: 'Nombre',
              keyboardType: TextInputType.text,
              textController: nameCtrl,
            ),
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
