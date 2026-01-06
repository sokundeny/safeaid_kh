import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/app_manager.dart';
import './qustion_screen.dart';

class Home extends StatelessWidget {

  final AppManager manager;

  const Home({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon
            const Icon(
              Icons.health_and_safety,
              size: 88,
              color: Colors.red,
            ),

            const SizedBox(height: 16),

            // App Title
            const Text(
              "SafeAid",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "First Aid & Emergency Guidance",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 48),

            Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>QuestionFlowScreen(manager: manager))
                  );
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.35),
                        blurRadius: 16,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Detect",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Injury",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),

            Text(
              "Tap to answer a few questions and get help",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
