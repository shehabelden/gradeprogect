import 'package:bdlha/domain/Dio/dio_get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import ' Presentation/base/cubt/cubt.dart';
import ' Presentation/login/login screen.dart';
void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create:(context) =>LoginCubt())
        ],
        child:const MaterialApp(
         home: LoginScreen(),
    ));
  }
}

