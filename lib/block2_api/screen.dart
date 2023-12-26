// import 'package:blockdemoapi/block2/api/bloc.dart';
// import 'package:blockdemoapi/block2/event.dart';
// import 'package:blockdemoapi/block2/state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'api/model.dart';

// class ScreensPop extends StatefulWidget {
//   const ScreensPop({super.key});

//   @override
//   State<ScreensPop> createState() => _ScreensPopState();
// }

// class _ScreensPopState extends State<ScreensPop> {
//   late final PopBloc _newsPop;

//   @override
//   void initState() {
//     // TODO: implement initState
//     _newsPop = PopBloc(); //
//     _newsPop.add(GetPopList());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Population"),
//       ),
//       body: _ListofPop(),
//     );
//   }
// }

// Widget _ListofPop() {
//   return Container(
//     margin: EdgeInsets.all(8.0),
//     child: BlocProvider(
//       create: (context) => _newsPop,
//       child: BlocListener<PopBloc, Popstate>(
//         listener: (context, state) {
//           if (state is PopError) {
//             ScaffoldMessenger.of(context)
//                 .showSnackBar(SnackBar(content: Text(state.message!)));
//           }
//         },
//         child: BlocBuilder<PopBloc, Popstate>(
//           builder: (context, state) {
//             if (state is PopLoading) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (state is PopLoaded) {
//               return _buildCard(context, state.populationData);
//             } else if (state is PopError) {
//               return Center(
//                 child: CircularProgressIndicator(
//                   color: Colors.red,
//                 ),
//               );
//             } else {
//               return Container(
//                 color: Colors.black,
//               );
//             }
//           },
//         ),
//       ),
//     ),
//   );
// }

// Widget _buildCard(BuildContext context, PopulationData model) {
//   return ListView.builder(
//     itemCount: model.idYear,
//     itemBuilder: (context, index) {
//       return Container(
//         margin: EdgeInsets.all(8.0),
//         child: Card(
//           child: Column(
//             children: [
//               Text("Nation ${model.idNation}"),
//               Text("SlungNation ${model.slugNation}")
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
