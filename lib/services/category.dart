import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:provider/provider.dart';

import '../constants/error_handling.dart';
import '../constants/global_variable.dart';
import '../constants/utlis.dart';
import '../models/categorymodel.dart';

class CategoryServices {
  Future<List<Categories>> fetchAllcategory(BuildContext context) async {
    List<Categories> categoryList = [];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/get-category'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            for (int i = 0; i < jsonDecode(res.body).length; i++) {
              categoryList.add(
                Categories.fromJson(
                  jsonEncode(
                    jsonDecode(res.body)[i],
                  ),
                ),
              );
            }
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }

    return categoryList;
  }
}
