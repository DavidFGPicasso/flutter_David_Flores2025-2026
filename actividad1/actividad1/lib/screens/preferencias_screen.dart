import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';

class PreferenciasScreen extends StatefulWidget {
  const PreferenciasScreen({super.key});

  @override
  State<PreferenciasScreen> createState() => _PreferenciasScreenState();
}

class _PreferenciasScreenState extends State<PreferenciasScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _prefiereExterior = true;

  final Map<String, bool> _opciones = {
    'Natación': false,
    'Fútbol': false,
    'Baloncesto': false,
    'Cocinar': false,
    'Videojuegos': false,
    'YouTube': false,
  };

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String? _generoSeleccionado;

  List<Widget> _generarOpciones() {
    final visibles = _prefiereExterior
        ? ['Natación', 'Fútbol', 'Baloncesto']
        : ['Cocinar', 'Videojuegos', 'YouTube'];

    return visibles.map((opcion) {
      return CheckboxListTile(
        title: Text(opcion),
        value: _opciones[opcion],
        onChanged: (valor) {
          setState(() => _opciones[opcion] = valor ?? false);
        },
      );
    }).toList();
  }

  void _enviarFormulario() {
    if (_formKey.currentState!.validate()) {
      final nombre = _nombreController.text.trim();
      final email = _emailController.text.trim();
      final genero = _generoSeleccionado ?? "No especificado";

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Nombre: $nombre\n"
            "Email: $email\n"
            "Género: $genero\n"
            "Exterior: $_prefiereExterior\n"
            "Opciones: $_opciones",
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text('Preferencias')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                ),
                validator: (valor) {
                  if (valor == null || valor.isEmpty) {
                    return 'Introduce tu nombre';
                  }
                  if (!RegExp(r'^[a-zA-ZÀ-ÿ\s]+$').hasMatch(valor)) {
                    return 'Solo letras y espacios';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress, 
                validator: (valor) {
                  if (valor == null || valor.isEmpty) {
                    return 'Introduce tu correo';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(valor)) {
                    return 'Correo inválido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                initialValue: _generoSeleccionado,
                decoration: const InputDecoration(
                  labelText: 'Género',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'Hombre', child: Text('Hombre')),
                  DropdownMenuItem(value: 'Mujer', child: Text('Mujer')),
                  DropdownMenuItem(value: 'Otro', child: Text('Otro')),
                ],
                onChanged: (valor) {
                  setState(() => _generoSeleccionado = valor);
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('¿Prefieres actividades al aire libre?'),
                  Switch(
                    value: _prefiereExterior,
                    onChanged: (valor) {
                      setState(() => _prefiereExterior = valor);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ..._generarOpciones(),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _enviarFormulario,
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
