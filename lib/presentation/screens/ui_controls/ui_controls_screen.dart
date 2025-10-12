import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Additional Controllers'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        RadioGroup<Transportation>(
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = value!;
          }),
          child: ExpansionTile(
            title: const Text('Transportation Vehicle'),
            subtitle: Text('$selectedTransportation'),
            children: const [
              RadioListTile(
                title: Text('By Car'),
                subtitle: Text('Travel by car'),
                value: Transportation.car,
              ),

              RadioListTile(
                title: Text('By Boat'),
                subtitle: Text('Travel by bo plane'),
                value: Transportation.boat,
              ),

              RadioListTile(
                title: Text('By Plane'),
                subtitle: Text('Travel by plane'),
                value: Transportation.plane,
              ),

              RadioListTile<Transportation>(
                title: Text('By Submarine'),
                subtitle: Text('Travel by submarine'),
                value: Transportation.submarine,
              ),
            ],
          ),
        ),

        CheckboxListTile(
          title: const Text('Breakfast?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Lunch?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Dinner?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),

      ],
    );
  }
}
