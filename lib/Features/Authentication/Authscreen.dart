import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:shopit/Features/Authentication/Presentation/Login.dart';
import 'package:shopit/Features/Authentication/Presentation/Signup.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_bloc.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_state.dart';

class Authscreen extends StatelessWidget {
  const Authscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthenticationBlocBloc, Authtabstate>(
          builder: (context, state) {
            return state.selectedtab == AuthTab.login ? Login() : Signup();
          },
        ),
      ),
    );
  }
}
