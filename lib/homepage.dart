import 'package:flutter/material.dart';
import 'package:homeservice/repairservices.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 30,),
          
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text('Home Services', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.person)
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    RepairService(
                      title: 'Plumbing Repair',
                      description: 'Fix leaks, clogs, and other plumbing issues',
                      imageUrl: 'assets/images/plumbing.jpg',
                    ),
                    SizedBox(height: 16),
                    RepairService(
                      title: 'Electrical Repair',
                      description: 'Fix electrical issues and install new fixtures',
                      imageUrl: 'assets/images/electrical.jpg',
                    ),
                    SizedBox(height: 16),
                    RepairService(
                      title: 'HVAC Repair',
                      description:
                          'Fix heating, ventilation, and air conditioning issues',
                      imageUrl: 'assets/images/hvac.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
