import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback? onTap;
  final IconData? icon;
  final String? trailingImagePath;
  final Color? textColor;

  const SettingRow({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
    this.icon,
    this.trailingImagePath,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Image.asset(imagePath, width: 29, height: 29),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            Spacer(),
            if (icon != null)
              Icon(icon, color: const Color.fromARGB(255, 36, 49, 104)),
            if (trailingImagePath != null)
              Image.asset(trailingImagePath!, width: 24, height: 24),
          ],
        ),
      ),
    );
  }
}
