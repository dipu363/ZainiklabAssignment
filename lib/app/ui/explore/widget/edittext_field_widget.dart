import 'package:flutter/material.dart';
import 'package:zainiklabassignment/app/utils/app_colors.dart';



class EditTextFieldWidget extends StatelessWidget {
  const EditTextFieldWidget({
    super.key,
    required this.controller,
    required this.validator,
    required this.hintext,
  });

  final TextEditingController controller;
  final Function(String?) validator;
  final String? hintext;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search_rounded),
        prefixIconColor: secondaryColor.withOpacity(.3),
        fillColor: searchBoxColor,
          filled: true,
          hintText: hintext,
          hintStyle: TextStyle(
              color: secondaryColor.withOpacity(.3),
            fontSize: 14,
            letterSpacing: -0.3,
              fontWeight: FontWeight.w400
          ),
          contentPadding:
               const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          border:  OutlineInputBorder(
              borderSide: const BorderSide(color: searchBoxColor,width: 0),
            borderRadius: BorderRadius.circular(15)

          ),
          enabledBorder:  OutlineInputBorder(
              borderSide: const BorderSide(color:searchBoxColor, width: 0 ),
              borderRadius: BorderRadius.circular(15)
          )
      ),
    );
  }
}
