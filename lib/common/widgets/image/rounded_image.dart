import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class AppRoundedImage extends StatelessWidget {
  const AppRoundedImage({
    super.key,
    this.height,
    this.width,
    this.isNetworkImage = false,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.padding,
    this.applyImagRadius = true,
    this.onTap,
    this.borderRadius = AppSizes.md,
    this.border,

    required this.imageUrl,
  });

  final double? height, width;

  final String imageUrl;
  final bool isNetworkImage, applyImagRadius;
  final BoxFit? fit;
  final double borderRadius;
  final Color? backgroundColor;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius:
              applyImagRadius
                  ? BorderRadius.circular(borderRadius)
                  : BorderRadius.zero,
          child: Image(
            image:
                isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
