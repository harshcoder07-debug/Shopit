import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopit/Features/Authentication/Presentation/Login.dart';
import 'package:shopit/Features/Authentication/Presentation/Signup.dart';
import 'package:shopit/Features/Authentication/Widgets/Authtabbutton.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_bloc.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_event.dart';
import 'package:shopit/Features/Authentication/bloc/authentication_bloc_state.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
             
              BlocBuilder<AuthenticationBlocBloc, Authtabstate>(
                builder: (context, tabstate) {
                  bool isLoginSelected = tabstate.selectedtab == AuthTab.login;
                  bool issignupselected =
                      tabstate.selectedtab == AuthTab.signup;
                  return Column(
                    children: [
                      Text(
                        isLoginSelected ? "Welcome Back" : "Create Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                "Welcome Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(235, 234, 232, 232),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 60,
                        child: Row(
                          children: [
                            Expanded(
                              child: AuthTabButton(
                                title: 'Login',
                                selected: isLoginSelected,
                                onTap: () {
                                  context.read<AuthenticationBlocBloc>().add(
                                    swithtologin(),
                                  );
                                },
                              ),
                            ),

                            const SizedBox(width: 2),

                            Expanded(
                              child: AuthTabButton(
                                title: 'SignUp',
                                selected: issignupselected,
                                onTap: () {
                                  context.read<AuthenticationBlocBloc>().add(
                                    swithtoSignup(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 20),

              Expanded(
                child: BlocBuilder<AuthenticationBlocBloc, Authtabstate>(
                  builder: (context, state) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: state.selectedtab == AuthTab.login
                          ? const Login()
                          : const Signup(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
