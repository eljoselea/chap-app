import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String titulo;
  final String subtitulo;

  const Labels({
    Key? key, 
    required this.ruta,
    required this.titulo,
    required this.subtitulo
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Text(titulo, style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300) ,
          ),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(subtitulo, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
          },
          ),
          SizedBox(height: 70)    
        ],
      ),
    );
  }
}

