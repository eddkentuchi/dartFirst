import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'names': 'Pollon',
      'last_names_one': 'Kentuchi',
      'last_names_two': 'Kentuchi',
      'email': 'eddkentuchi@gmail.com',
      'phone': '23536433432',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                //Este es mi witget para recibir datos del usuario
                CustomInput(
                  labelText: 'Nombre ',
                  hintText: 'Nombres sin apellidos',
                  helperText: 'Solo letras',
                  icon: Icons.account_circle_rounded,
                  prefixIcon: Icons.abc,
                  suffixIcon: Icons.ac_unit_outlined,
                  formProperty: 'names',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInput(
                  labelText: 'Primer Apellido ',
                  hintText: 'Apellido sin espacios',
                  helperText: 'Solo letras',
                  formProperty: 'last_names_one',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(
                  labelText: 'Segundo Apellido ',
                  hintText: 'Apellido sin espacios',
                  helperText: 'Solo letras',
                  formProperty: 'last_names_one',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(
                  labelText: 'Correo Electronico ',
                  hintText: 'Correo electronico presonal',
                  helperText: 'Correo Valido',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(
                  labelText: 'Telefono ',
                  hintText: 'Telefono de casa',
                  helperText: 'Solo números',
                  keyboardType: TextInputType.number,
                  formProperty: 'phone',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(
                  labelText: 'Contraseña ',
                  hintText: 'Contraseña',
                  helperText:
                      'Minimo un caracter especial mayucula y minuscula',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'DataBase', child: Text('DataBase')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
