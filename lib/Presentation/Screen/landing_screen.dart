import 'package:bloc_bottomnav_bar/Business_Logic/bloc/landing_bloc.dart';
import 'package:bloc_bottomnav_bar/Presentation/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> bottomNavigator = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
];
List<Widget> bottomNavScreen = <Widget>[
  Home(),
  Text('data'),
  Text('Home'),
  Text('data'),
];

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingBloc, LandingState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(child: bottomNavScreen.elementAt(state.tabindex)),
            bottomNavigationBar: BottomNavigationBar(
              items: bottomNavigator,
              currentIndex: state.tabindex,
              unselectedItemColor: Color.fromARGB(255, 136, 127, 233),
              selectedItemColor: Colors.grey,
              onTap: (index) {
                BlocProvider.of<LandingBloc>(context)
                    .add(TabChange(tabIndex: index));
              },
            ),
          );
        },
        listener: (_, state) {});
  }
}
