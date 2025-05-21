import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.indigo,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('About App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/icons/Tcare.png"),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.indigo),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Our app is part of an innovative project designed to enhance your daily life by continuously monitoring your health. Using a smart glove connected to the app, we provide an easy and effective solution to track vital signs like body temperature and heart rate, while offering personalized health tips to help you maintain your overall well-being.',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 18),
              Text(
                'App Features',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              BulletList([
                'Continuous Monitoring: Track your health in real-time through the smart glove.',
                'Smart Notifications: Receive instant alerts if any abnormal changes in your health are detected.',
                'Health Tips: Get daily suggestions to improve your health, such as drinking water or exercising.',
                'Emergency Support: In critical situations, the app automatically contacts emergency services and shares your location.',
                'Simple Interface: A user-friendly design that clearly displays important information.',
              ]),
              SizedBox(height: 18),
              Text(
                'How Does the App Work?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              NumberedList([
                'Wear the Smart Glove: The glove is equipped with sensors that measure your vital signs.',
              ]),
              SizedBox(height: 18),
              Text(
                'Why the Smart Glove?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'The smart glove is a practical and comfortable way to monitor your health without the need for bulky or complicated devices. You can use it anytime, anywhere, making it ideal for health-conscious individuals looking for smart solutions.',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 18),
              Text(
                'Our Vision',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'We believe that prevention is better than cure, and through this app, we aim to empower you to take better control of your health. We want to be your trusted partner in your journey toward better well-being.',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 18),
              Text(
                'Our Team',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'We are a team of developers, designers, and health experts working together to deliver an exceptional and effective user experience. We are committed to continuously improving the app to meet your needs.',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;
  const BulletList(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          items
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('•  ', style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: Text(item, style: const TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
    );
  }
}

class NumberedList extends StatelessWidget {
  final List<String> items;
  const NumberedList(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        items.length,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${index + 1}. ',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(items[index], style: const TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
