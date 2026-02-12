import 'package:flutter/material.dart';
import 'package:mobile/core/constants/constant_sizes.dart';
import 'package:mobile/features/home/presentations/widgets/home_attendance_status_widget.dart';
import 'package:mobile/features/home/presentations/widgets/home_header_widget.dart';
import 'package:mobile/features/home/presentations/widgets/home_live_time_widget.dart';
import 'package:mobile/features/home/presentations/widgets/home_location_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(ConstantSizes.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            spacing: 25,
            children: [
              HomeHeaderWidget(),
              HomeLiveTimeWidget(),
              HomeLocationWidget(),
              HomeAttendanceStatusWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
