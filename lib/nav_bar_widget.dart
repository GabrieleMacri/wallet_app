import 'package:flutter/material.dart';

import 'constants.dart';

class NavBarWidget extends StatefulWidget {
  NavBarWidget({
    super.key,
  });

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  final List<IconData> navBarIcons = [
    Icons.account_balance_wallet_outlined,
    Icons.library_books_outlined,
    Icons.qr_code_scanner_outlined,
    Icons.contacts_outlined,
    Icons.person_remove_outlined,
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: ConstantsColors.navBarBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        children: List.generate(
          navBarIcons.length,
              (index) => (index == 2)
              ? Container(
            padding: EdgeInsets.all(11),
            decoration: BoxDecoration(
                color: ConstantsColors.greenColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.shade500,
                    offset: Offset(0, 8),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ]),
            child: Icon(
              navBarIcons[index],
              size: 30,
              color: Colors.white,
              semanticLabel: 'Scan QR code',
            ),
          )
              : GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = index;
              });
            },
            child: Icon(
              navBarIcons[index],
              size: 30,
              color: (index == selectedItem)
                  ? Colors.white
                  : Colors.blue.shade800,
              semanticLabel: iconLabel(navBarIcons[index]),
            ),
          ),
        ),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
  
  String iconLabel(IconData icon) {
    switch (icon) {
      case Icons.account_balance_wallet_outlined:
        return 'Wallet';
      case Icons.library_books_outlined:
        return 'Library';
      case Icons.qr_code_scanner_outlined:
        return 'Scan QR code';
      case Icons.contacts_outlined:
        return 'Contacts';
      case Icons.person_remove_outlined:
        return 'Remove Person';
      default:
        return 'Icon';
    }
  }
}
