import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  final String? name;
  final String? email;
  static const route = '/stopwatch';
  const StopWatch({super.key, this.email, this.name});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int millisecond = 0;
  late Timer timer;
  bool toolohEseh = true;
  final laps = <int>[];

  @override
  void initState() {
    super.initState();
    millisecond = 0;
  }

  void _onTick(Timer timer) {
    if (toolohEseh) {
      setState(() {
        millisecond = millisecond + 100;
      });
    }
  }

  void _startTime() {
    if (toolohEseh == false) {
      laps.clear();
      timer = Timer.periodic(const Duration(microseconds: 100), _onTick);

      setState(() {
        millisecond = 0;
        toolohEseh = true;
      });
    }
  }

  void _stopTime() {
    if (toolohEseh == true) {
      timer.cancel();
      setState(() {
        // millisecond = 0;
        toolohEseh = false;
      });
    }
  }

  String _secondText(int milliseconds) {
    final seconds = milliseconds / 1000;
    return '$seconds secund';
  }

  void _lap() {
    if (toolohEseh) {
      setState(() {
        laps.add(millisecond);
        millisecond = 0;
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Widget _buildCounter(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'toirog ${laps.length + 1}',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white,
                ),
          ),
          Text(
            _secondText(millisecond),
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _startTime,
                child: Text('ehleh'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.green,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: _lap,
                child: Text('toirog'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.yellow,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: _stopTime,
                child: Text('Duuusgah'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.red,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildLapDisplay() {
    return ListView(
      children: [
        for (int milliseconds in laps)
          ListTile(
            title: Text(_secondText(
              milliseconds,
            )),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stopwatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: _buildCounter(context)),
          Expanded(child: _buildLapDisplay()),
          // Center(
          //   child: Text(
          //     '$millisecond millisec',
          //     style: Theme.of(context).textTheme.headline5,
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
