import 'package:blockdemoapi/BLoc_YT_full/Bloc_validation_app/Loginscreen.dart';
import 'package:blockdemoapi/BLoc_YT_full/Bloc_validation_app/bloc/authentication_bloc.dart';
import 'package:blockdemoapi/BLoc_YT_full/Bloc_validation_app/widgets/grediant_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomesVAlidation extends StatelessWidget {
  const HomesVAlidation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
      ),
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is AuthenticationInitial) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthLoding) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is AuthSucess) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    state.uid,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GradientButton(
                  onPressed: () {
                    context.read<AuthenticationBloc>().add(AuthlogoutRequest());
                  },
                  name: 'Sign Out',
                )
              ],
            );
          } else {
            // Handle other states or fallback scenario
            return Container(); // Return an empty container or a different widget for other states
          }
        },
      ),
    );
  }
}
