import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });


}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Buttons',
    subTitle: 'Various Buttons in Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Cards',
    subTitle: 'An Stylized Container',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Standard and controlled',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbars and dialogs',
    subTitle: 'Screen Indicators',
    link: '/snackbars',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful Animated Widget',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Various controllers in Flutter',
    link: '/ui_controls',
    icon: Icons.car_rental_outlined
  ),

  MenuItem(
    title: 'App Introduction',
    subTitle: 'Quick Introduction Tutorial',
    link: '/app_tutorial',
    icon: Icons.accessible_rounded
  ),

];