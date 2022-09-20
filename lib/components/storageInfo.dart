
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

class DetailTile extends StatelessWidget {
  const DetailTile({
    super.key,
    required this.text,
    required this.data,
    required this.count,
    required this.icon,
    required this.iconColor,
  });
  final String text, data;
  final int count;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor.withOpacity(0.15), width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "${count} files",
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
          ),
        )),
        Text(
          data,
        ),
      ]),
    );
  }
}