import 'package:flutter/material.dart';

void main() {
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insurance Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Insurance Blog'),
        ),
        body: BlogHomePage(),
      ),
    );
  }
}

class BlogHomePage extends StatelessWidget {
  final List<String> navItems = [
    'Auto Insurance',
    'Private Auto Insurance',
    'Professional Auto Insurance',
    'Equipment Insurance',
    'Fleet Insurance',
    'Property Insurance',
    'Home Insurance',
    'Professional Premises Insurance',
    'Property Insurance',
    'Liability Insurance',
    'Construction Damage Insurance',
    'Business Interruption Insurance',
    'Accounts Receivable Insurance',
    'Full Value Insurance',
    'Agent and Adjuster Services',
    'Insurance Agent',
    'Insurance Adjuster',
    'Miscellaneous Insurance',
    'Insurance Plan',
    'Reinsurance',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: navItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(navItems[index]),
          onTap: () {
            // Handle navigation here
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Navigating to ${navItems[index]}'),
              ),
            );
          },
        );
      },
    );
  }
}
