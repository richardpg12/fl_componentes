import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child:Form(
            
            child: Column(
              children: [
                const CustomInputField(labelText: 'Nombre',hintText:'Nombre del usuario'),
                const SizedBox(height: 30),
                const CustomInputField(labelText: 'Apellido',hintText:'Apellido del usuario'),
                const SizedBox(height: 30),
                const CustomInputField(labelText: 'Correo',hintText:'Correo del usuario',keyboardType: TextInputType.emailAddress,),
                const SizedBox(height: 30),
                const CustomInputField(labelText: 'Password',hintText:'Contraseña del usuario', obscureText: true,),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar'))
                    ),
                  onPressed: (){
                    // To do: Imprimir valores del formulario
                  },
                ),
                
                // TextFormField(
                //   decoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Nombre',
                //     hintText: 'Ingrese su nombre'
                //   ),
                // ),
              ],
              ),
          )
        ),
      ),
    );
  }
}

