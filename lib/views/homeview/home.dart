import 'package:flutter/material.dart';
import 'package:lekkiprop/core/bloc/add_property_bloc.dart';

import 'package:lekkiprop/core/bloc/getpropertybloc.dart';
import 'package:lekkiprop/core/models/properties_home.dart';
import 'components/build_error.dart';
import 'components/build_loading.dart';
import 'components/build_screen_widget.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _bloc = AddPropertyBloc();

  @override
  void initState() {
    super.initState();
    propertyBloc..getProperty();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ResponseWrapper>(
        stream: propertyBloc.subject.stream,
        builder: (context, AsyncSnapshot<ResponseWrapper> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.status.isEmpty) {
              return buildErrorWidget(context, snapshot.data!.message);
            }
            return buildScreenWidget(context, snapshot.requireData, _bloc);
          } else if (snapshot.hasError) {
            return buildErrorWidget(context, snapshot.data!.message);
          } else {
            return buildLoading(context);
          }
        });
  }
}
