import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ImageThumb extends HookWidget {
  const ImageThumb(
    this.path, {
    super.key,
    required this.onClose,
  });

  final String path;
  final void Function() onClose;

  @override
  Widget build(BuildContext context) {
    final isNetworkImage = useState(false);

    useEffect(() {
      isNetworkImage.value = path.startsWith('http');
      print('ImageThumb${isNetworkImage.value}');
      print(path);
      return null;
    }, []);

    return Stack(
      alignment: Alignment.topRight,
      children: [
        Image.file(
          File(path),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        IconButton(
          iconSize: 16,
          onPressed: onClose,
          icon: const Icon(Icons.close),
          constraints: const BoxConstraints(),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.black54.withAlpha(100)),
            foregroundColor:
                MaterialStateProperty.all(Colors.white.withAlpha(200)),
            padding: MaterialStateProperty.all(const EdgeInsets.all(6)),
          ),
        ),
      ],
    );
  }
}
