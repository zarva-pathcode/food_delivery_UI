import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/app_assets.dart';
import 'package:food_delivery_ui_kit/utils/colors_const.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

enum CallStatus { onCall, ringing, pending }

class CallingScreen extends StatefulWidget {
  const CallingScreen({Key? key}) : super(key: key);

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  Duration duration = const Duration();
  bool isOff = true;
  int _ringingTime = 3;
  Timer? _pickUpTime;
  Timer? _callTime;
  CallStatus callStatus = CallStatus.ringing;

  @override
  void initState() {
    super.initState();
    ringingTimer();
  }

  void addTime() {
    const addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  void startCall() {
    _callTime =
        Timer.periodic(const Duration(seconds: 1), (timer) => addTime());
    setState(() {
      callStatus = CallStatus.onCall;
    });
  }

  void endCall() {
    setState(() {
      _callTime?.cancel();
    });
  }

  void ringingTimer() {
    _pickUpTime = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_ringingTime == 0) {
        setState(() {
          timer.cancel();
          startCall();
        });
      } else {
        setState(() {
          _ringingTime--;
        });
      }
    });
  }

  @override
  void dispose() {
    _pickUpTime!.cancel();
    _callTime!.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundPattern),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 5),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage(AppAssets.profilePhoto2),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Courtney Henry",
              style: AppText.infoText.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              callStatus == CallStatus.onCall
                  ? "$minutes:$seconds"
                  : callStatus == CallStatus.ringing
                      ? "Ringing ..."
                      : "Pending ...",
              style: AppText.largeText.copyWith(
                  color: Colors.grey[300], fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isOff = !isOff;
                    });
                  },
                  child: Container(
                    height: 78,
                    width: 78,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: accentColor.withOpacity(.1)),
                    child: Center(
                      child: Image.asset(
                        isOff ? AppAssets.volumeDown : AppAssets.volumeUp,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                GestureDetector(
                  onTap: () {
                    _callTime?.cancel();
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 78,
                    width: 78,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: redColor),
                    child: Center(
                      child: Image.asset(
                        AppAssets.decline,
                        height: 18,
                        width: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
