import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myformKey= GlobalKey<FormState>();

    final Map<String, String> formValues={
      'first_name'  :'Richard',
      'last_name'   :'Perez',
      'email'       :'richard.perezg26@gmail.com',
      'password'    :'123456',
      'role'        :'Admin',

    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child:Form(
            key: myformKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre',hintText:'Nombre del usuario',formProperty:'first_name',formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Apellido',hintText:'Apellido del usuario',formProperty:'last_name',formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Correo',hintText:'Correo del usuario',keyboardType: TextInputType.emailAddress,formProperty:'email',formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Password',hintText:'Contraseña del usuario', obscureText: true,formProperty:'password',formValues: formValues),
                const SizedBox(height: 30),


                DropdownButtonFormField<String>(
                  value: formValues['role'],
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin'),),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser'),),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer'),),
                  ],
                  onChanged: (value){
                    formValues['role']=value??'Admin';
                  },
                  decoration: InputDecoration(
                    labelText: 'Rol',
                    hintText: 'Seleccione el rol del usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar'))
                    ),
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myformKey.currentState!.validate()){
                      print("formulario no valido");
                      return;
                    }
                    // To do: Imprimir valores del formulario
                    print(formValues);
                    print(myformKey);
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

