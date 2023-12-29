import 'package:blockdemoapi/cubit_api/apiServvices/apiService.dart';
import 'package:blockdemoapi/cubit_api/cubit/user_d_etails_cubit.dart';
import 'package:blockdemoapi/cubit_api/models/Userdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  // UserDetails userDetails = UserDetails();
  // Getapi() {
  //   ApiServices.Getapi().then((value) {
  //     setState(() {
  //       userDetails = value!;
  //       print("0101 :- $value");
  //     });
  //   }).onError((error, stackTrace) {
  //     print(error);
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<UserDEtailsCubit>().Getapi();
    });
    super.initState();
    // Getapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cubit_Api"),
        ),
        body: BlocConsumer<UserDEtailsCubit, UserDEtailsState>(
          builder: (context, state) {
            if (state is UserLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UserError) {
              final error = state.error;
              return Text(error);
            } else if (state is UserLoded) {
              return ListView.builder(
                itemCount: state.userDetails.users!.length,
                itemBuilder: (context, index) {
                  final data = state.userDetails.users![index];

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          elevation: 5.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name:- ${data.firstName.toString()}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "Last Name:- ${data.lastName.toString()}"),
                                        Text("Id:- ${data.id.toString()}")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: 120,
                                      child: ClipRRect(
                                        child: Image.network(
                                          data.image.toString(),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              const Text(
                                "Personal Details",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Gender:- ${data.gender.toString()}"),
                                        Text("Age:- ${data.age.toString()}"),
                                        Text(
                                            "Height:- ${data.height.toString()}"),
                                        Text(
                                            "Weight:- ${data.weight.toString()}"),
                                        Text(
                                            "Eye:- ${data.eyeColor.toString()}"),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                            "Email:- ${data.email.toString()}"),
                                        Text(
                                            "Phone:- ${data.phone.toString()}"),
                                        Text(
                                            "DOB:- ${data.birthDate.toString()}"),
                                        Text(
                                            "Blood:- ${data.bloodGroup.toString()}"),
                                        Text(
                                            "UserName:- ${data.username.toString()}")
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            }
            return const SizedBox();
          },
          listener: (context, state) {},
        ));
  }
}
