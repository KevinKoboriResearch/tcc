import 'package:flutter/material.dart';
import 'package:tcc/core/utils/consts.dart';

class YummyBottomSearchAppBarWidget extends StatelessWidget {
  const YummyBottomSearchAppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.rosaClaro.withOpacity(0.9),
          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          suffixIcon: Icon(Icons.search),
          hintText: "Pesquisar",
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.7),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: AppColors.rosaExtraClaro,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
