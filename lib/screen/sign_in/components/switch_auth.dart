import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../constants/colors.dart';

class SwitchAuth extends StatefulWidget {
  const SwitchAuth({super.key});

  @override
  State<SwitchAuth> createState() => _SwitchAuthState();
}

class _SwitchAuthState extends State<SwitchAuth> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      activeColor: mainOrange,
      width: 40.0,
      height: 22.0,
      // valueFontSize: 25.0,
      toggleSize: 20.0,
      value: status,
      borderRadius: 30.0,
      // padding: 8.0,
      // showOnOff: true,
      onToggle: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }
}
