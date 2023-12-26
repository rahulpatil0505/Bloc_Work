import 'package:flutter/material.dart';

import 'datablock.dart';
import 'event.dart';
import 'state.dart';

class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final DataBloc _dataBloc = DataBloc();

  @override
  void initState() {
    _dataBloc.mapEventToState(FetchData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Data Display'),
      ),
      body: StreamBuilder<DataState>(
        stream: _dataBloc.dataStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.data!.data != null) {
              final apiData = snapshot.data!.data;
              return ListView.builder(
                itemCount: apiData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(apiData[index]['Year']),
                    subtitle:
                        Text('Population: ${apiData[index]['Population']}'),
                  );
                },
              );
            } else if (snapshot.data!.error != null) {
              return Center(child: Text('Error: ${snapshot.data!.error}'));
            }
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  @override
  void dispose() {
    _dataBloc.dispose();
    super.dispose();
  }
}
