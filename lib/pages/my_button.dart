import 'package:flutter/material.dart';



class myButton extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color textColor;
  final double elevation;
  const myButton({
    super.key,
    required this.bgColor,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.textColor,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: elevation,
              backgroundColor: bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )
          ),
          onPressed: (){}, child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
              color: iconColor,),
            SizedBox(width: 4,),
            Text(title,style: TextStyle(
              color: textColor,
            ),),
          ],
        ),
      )),
    );
  }
}
