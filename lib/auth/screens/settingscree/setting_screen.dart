import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final settingLabel = [
    "Account",
    "Address",
    "Telephone",
    "Email",
    "Payment",
    "Orders",
    "Logout"
        "Account",
    "Address",
    "Telephone",
    "Email",
    "Payment",
    "Orders",
    "Logout"
  ];

  final iconTypes = <IconData>[
    Icons.man,
    Icons.location_on_outlined,
    Icons.phone,
    Icons.email,
    Icons.payment,
    Icons.card_travel,
    Icons.logout_outlined,
    Icons.man,
    Icons.location_on_outlined,
    Icons.phone,
    Icons.email,
    Icons.payment,
    Icons.card_travel,
    Icons.logout_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Account"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: settingLabel.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              settingLabel[index],
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black.withOpacity(0.6),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w800),
              ),
            ),
            leading: Icon(
              iconTypes[index],
              color: Colors.black,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
            onTap: () => this.setState(() {
              switch (settingLabel[index]) {
                case 'Address':
                  return snackBarMsg(context, 'Address');

                default:
              }
            }),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1.0,
          );
        },
      ),
    );
  }

  snackBarMsg(BuildContext context, String s) {
    var sc = SnackBar(
      elevation: 2,
      content: Text(s),
      duration: new Duration(seconds: 3),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
    );
  }
}
