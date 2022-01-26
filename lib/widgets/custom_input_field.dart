import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType; 
  final bool obscureText; 

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, this.obscureText=false, 
    required this.formProperty, required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: true,
      initialValue:'',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value){
        formValues[formProperty] = value;
        //print('value: $value');
      },
      validator: (value){
        if(value==null) return 'Este Campo es requerido';
        return value.length<3?'Este Campo debe tener al menos 3 caracteres':null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.green)
        // ),
        // //border: OutlineInputBorder(),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //   )
        
        // ),
        icon: icon==null?null: Icon(icon),
        suffixIcon: suffixIcon==null?null:Icon(suffixIcon),
      
      ),
    );
  }
}