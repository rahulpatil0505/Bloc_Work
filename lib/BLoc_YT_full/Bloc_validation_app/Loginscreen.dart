import 'package:blockdemoapi/BLoc_YT_full/Bloc_validation_app/Homepage.dart';
import 'package:blockdemoapi/BLoc_YT_full/Bloc_validation_app/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/grediant_button.dart';
import 'widgets/login_text.dart';
import 'widgets/socialbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthFail) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
        if (state is AuthSucess) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomesVAlidation(),
              ));
        }
      },
      builder: (context, state) {
        if (state is AuthLoding) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN_lI-oRq_APiOJu6eMqnJYU01wFidWdsROQ'),
            ),
            const Text(
              'Sign in',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 50),
            const SocialButton(
                iconPath: 'assets/svgs/g_logo.svg',
                label: 'Continue with Google'),
            const SizedBox(height: 20),
            const SocialButton(
              iconPath: 'assets/svgs/f_logo.svg',
              label: 'Continue with Facebook',
              horizontalPadding: 90,
            ),
            const SizedBox(height: 15),
            const Text(
              'or',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 15),
            LoginField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 15),
            LoginField(
              hintText: 'Password',
              controller: passwordController,
            ),
            const SizedBox(height: 20),
            GradientButton(
              onPressed: () {
                context.read<AuthenticationBloc>().add(AuthLoginRequeste(
                    email: emailController.text,
                    password: passwordController.text));
              },
              name: 'Sign In',
            ),
          ],
        )));
      },
    ));
  }
}
