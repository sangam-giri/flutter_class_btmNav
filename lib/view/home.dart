import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets/controller/main_cubit/main_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, int>(
        bloc: mainCubit,
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: state,
                onTap: (value) {
                  mainCubit.changeTab(value);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: "Cart"),
                ]),
          );
        },
      ),
    );
  }
}
