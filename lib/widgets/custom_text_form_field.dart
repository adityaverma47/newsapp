import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/utils/color_constant.dart';

class CustomTextFormField extends StatelessWidget {

  CustomTextFormField(
      {super.key,
        this.alignment,
        this.controller,
        this.onTap,
        this.width,
        this.onChanged,
        this.focusNode,
        this.margin,
        this.isObscureText,
        this.readOnly,
        this.autofocus,
        this.maxLength,
        this.maxLines,
        this.minLines,
        this.hintText,
        this.prefix,
        this.suffix,
        this.textInputAction,
        this.variant,
        this.textInputType,
        this.validator,
        this.padding,
        this.prefixConstraints,
        this.inputFormatters,
        this.floatingLabelBehavior,
        this.shape
      });

  Alignment? alignment;

  TextEditingController? controller;

  double? width;

  VoidCallback? onTap;

  Function(String)? onChanged;

  FocusNode? focusNode;

  EdgeInsetsGeometry? margin;

  bool? isObscureText;

  bool? readOnly;

  bool? autofocus;

  int? maxLength;

  int? maxLines;

  int? minLines;

  String? hintText;

  Widget? prefix;

  Widget? suffix;

  TextInputAction? textInputAction;

  TextFormFieldVariant? variant;

  TextInputType? textInputType;

  FormFieldValidator<String>? validator;

  TextFormFieldPadding? padding;

  BoxConstraints? prefixConstraints;

  List<TextInputFormatter>? inputFormatters;

  FloatingLabelBehavior? floatingLabelBehavior;

  TextFormFieldShape? shape;


  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        obscureText: isObscureText!,
        readOnly: readOnly ?? false,
        maxLength: maxLength,
        minLines: minLines ?? 1,
        textInputAction: textInputAction ?? TextInputAction.next,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
        inputFormatters: inputFormatters,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      counterText: "",
      hintText: hintText ?? "",
      floatingLabelBehavior:
          floatingLabelBehavior ?? FloatingLabelBehavior.auto,
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: BoxConstraints(
          //suffixIconConstraints
          maxHeight: 12.h),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.white,
            width: 0,
          ),
        );
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray30004_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: const BorderSide(
            color: ColorConstant.outlineStroke,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillDeeporange5001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray10001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray30004_2:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: const BorderSide(
            color: ColorConstant.outlineStroke,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineScecondaryColor:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: const BorderSide(
            color: ColorConstant.secondaryColor,
            width: 1,
          ),
        );

      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: const BorderSide(
            color: ColorConstant.outlineStroke,
            width: 1,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          6.00.w,
        );
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT16:
        return EdgeInsets.only(
          left: 16.w,
          top: 16.h,
          bottom: 16.h,
        );
      case TextFormFieldPadding.PaddingAll19:
        return EdgeInsets.all(
          19.w,
        );
      case TextFormFieldPadding.PaddingT15:
        return EdgeInsets.only(
          left: 12.w,
          top: 15.h,
          right: 12.w,
          bottom: 15.h,
        );
      case TextFormFieldPadding.PaddingLR16TB8:
        return EdgeInsets.only(
          left: 16.w,
          top: 8.h,
          right: 16.w,
          bottom: 8.h,
        );
      case TextFormFieldPadding.PaddingAll8:
        return EdgeInsets.all(
          8.w,
        );
      case TextFormFieldPadding.PaddingAll4:
        return EdgeInsets.all(
          4.w,
        );
      case TextFormFieldPadding.PaddingAll12:
        return EdgeInsets.all(
          12.w,
        );
      case TextFormFieldPadding.PaddingAll0:
        return EdgeInsets.all(
          0.w,
        );
      default:
        return EdgeInsets.all(
          16.w,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder6,
}

enum TextFormFieldPadding {
  PaddingAll16,
  PaddingT16,
  PaddingAll19,
  PaddingT15,
  PaddingAll8,
  PaddingAll4,
  PaddingAll12,
  PaddingAll0,
  PaddingLR16TB8
}

enum TextFormFieldVariant {
  None,
  OutlineGray30004,
  White,
  FillWhiteA700,
  OutlineGray30004_1,
  FillDeeporange5001,
  FillGray10001,
  OutlineGray30004_2,
  OutlineScecondaryColor,
  FillneutralN20
}
