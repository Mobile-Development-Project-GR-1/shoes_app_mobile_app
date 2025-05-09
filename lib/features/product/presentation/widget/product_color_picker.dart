import 'package:flutter/material.dart';
import 'package:shoesly/core/constant/app_colors.dart';
import 'package:shoesly/core/enum/product_color.dart';

class ProductColorPicker extends StatelessWidget {
  final List<ProductColor> colors;
  final ProductColor? selectedColor;

  ///[onColorSelected] will be called when user select any color
  final void Function(ProductColor code) onColorSelected;
  const ProductColorPicker(
      {super.key,
      required this.colors,
      required this.onColorSelected,
      required this.selectedColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 06),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: colors.map((e) {
          return InkWell(
            onTap: () {
              onColorSelected(e);
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: e.value,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.borderColor,
                          width: 1,
                        )),
                  ),
                  if (selectedColor == e)
                    Icon(
                      Icons.check,
                      size: 13,
                      color:
                          e.value == Colors.white ? Colors.black : Colors.white,
                    )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
