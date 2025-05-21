import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'English';
  final List<String> _languages = [
    'English',
    'Arabic',
    'Türkiye',
    'German',
    'Italy',
    'Switzerland',
    'France',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 30),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Language', style: TextStyle(color: Colors.black)),
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
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('App Language', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            ..._languages.map(
              (lang) => RadioListTile<String>(
                value: lang,
                groupValue: _selectedLanguage,
                title: Text(
                  lang,
                  style: TextStyle(
                    color:
                        _selectedLanguage == lang
                            ? Colors.indigo
                            : Colors.black,
                    fontWeight:
                        _selectedLanguage == lang
                            ? FontWeight.bold
                            : FontWeight.normal,
                  ),
                ),
                activeColor: Colors.indigo,
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
