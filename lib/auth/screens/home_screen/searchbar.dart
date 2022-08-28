import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        height: 70,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search items...",
              hintStyle: TextStyle(letterSpacing: 1.5),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: Lottie.network(
                    "https://assets9.lottiefiles.com/private_files/lf30_EdMORb.json"),
              ),
              suffixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SizedBox(
                    height: 48,
                    width: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Lottie.network(
                        "https://assets9.lottiefiles.com/private_files/lf30_uol7jo08.json",
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    )),
              )),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  );
}
