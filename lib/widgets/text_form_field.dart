import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInput({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //me selecciona de forma automatica este imput al acceder a esta pantalla
      autofocus: false,
      initialValue: '',
      //textCapitalization me ayuda a que cada palabra inicie en mayusculas
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      //Función que se ejecuta cada que modifico este TextForm
      onChanged: (value) => formValues[formProperty] = value,
      //Aquí podemos poner las banderas para que el input corresponda con lo requerido
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mimimo de 3 letras' : null;
      },
      //Levanta la bandera del validador si el usuario interactua con el textForm
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //texto que tenemos como referencia en nuestro input

        //Titulo de mi input
        labelText: labelText,
        hintText: hintText,
        //texto inferior de ayuda para nuestros inputs
        helperText: helperText,
        //icono que aparece internamente del lado derecho
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        //icono que aparece internamente del lado izquierdo
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //Icono a la izquierda de mi pantalla
        icon: icon == null ? null : Icon(icon),
        //Le doy estilo a los bordes de mi TextFormField
        /*border: OutlineInputBorder(
            //Crea  radios de las esqunas del borde
            borderRadius: BorderRadius.all(Radius.circular(10))),*/
      ),
    );
  }
}
