import 'package:financce/core/featuers/auth/homepage/home_page_screen.dart';
import 'package:financce/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;

  List<Widget> screens = [
    const  HomePageScreen(),
    Container(width: double.infinity, height: double.infinity, color: Colors.red),
    Container(width: double.infinity, height: double.infinity, color: Colors.green),
    Container(width: double.infinity, height: double.infinity, color: Colors.yellow),
    Container(width: double.infinity, height: double.infinity, color: Colors.teal),
    Container(width: double.infinity, height: double.infinity, color: Colors.blue),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.PrimaryColors,
        unselectedItemColor: Colors.grey,
        currentIndex: currentindex,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_history), label: "statistics"),
          BottomNavigationBarItem(icon:Container(
            width: 48.sp,
            height: 48.sp,
            decoration: BoxDecoration(color: AppColors.PrimaryColors,shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Icon(Icons.add,color:Colors.white,size: 30.sp,),),
            label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.card_membership_outlined), label: "my cards"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
