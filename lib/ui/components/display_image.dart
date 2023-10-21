import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class DisplayImage extends StatefulWidget {
  final String url;
  final double aspectRatio;
  final double? width;
  final double? height;
  final Widget? icon;
  final BoxFit? fit;
  final Color? backgroundColor;

  const DisplayImage({
    Key? key,
    required this.url,
    this.aspectRatio = 1,
    this.width,
    this.height,
    this.icon,
    this.fit,
    this.backgroundColor,
  }) : super(key: key);

  @override
  State<DisplayImage> createState() => _DisplayImageState();
}

class _DisplayImageState extends State<DisplayImage> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final image = Builder(
        builder: (context) {
          if (widget.url != '') {
            if (!widget.url.startsWith("https://")) {
              return ExtendedImage.asset(
                widget.url,
                height: widget.height,
                width: widget.width,
                fit: widget.fit ?? BoxFit.cover,
                enableLoadState: true,
                loadStateChanged: _imageState,
              );
            }
            return ExtendedImage.network(
              widget.url,
              cache: true,
              height: widget.height,
              width: widget.width,
              fit: widget.fit ?? BoxFit.cover,
              enableLoadState: true,
              printError: false,
              loadStateChanged: _imageState,
            );
          }
          return _buildError(context);
        },
      );

      if (widget.width != null) return image;
      return AspectRatio(
        aspectRatio: widget.aspectRatio,
        child: image,
      );
    });
  }

  Widget? _imageState(ExtendedImageState state) {
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        return _buildError(context);
      case LoadState.completed:
        return state.completedWidget;
      case LoadState.failed:
        return _buildError(context);
      default:
        return _buildError(context);
    }
  }

  Widget _buildError(context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: widget.icon,
    );
  }
}
