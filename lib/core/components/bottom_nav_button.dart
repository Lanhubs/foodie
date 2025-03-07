import 'package:flutter/material.dart';
import 'package:restaurant_app/core/constants/constants.dart';

class BottomNavButton extends StatefulWidget {
  final String label;
  final VoidCallback click;
  bool isActive = false;
  final IconData icon;
  BottomNavButton(
      {super.key,
      required this.label,
      required this.click,
      required this.icon,
      this.isActive = false});

  @override
  State<BottomNavButton> createState() => _BottomNavButtonState();
}

class _BottomNavButtonState extends State<BottomNavButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: widget.click,
      child: AnimatedContainer(
       
         padding: EdgeInsets.symmetric(vertical: AppResolutions.height(context)*0.02),
          duration: Duration(milliseconds: 500),
          width: widget.isActive ? width * 0.2 : width * 0.06,
          child: Row(
            spacing: MediaQuery.of(context).size.width * 0.01,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(widget.icon, color: Colors.white, size: 20,),
              if (widget.isActive) ...[
                Flexible(
                  child: Text(
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    widget.label,
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ],
          )),
    );
  }
}
