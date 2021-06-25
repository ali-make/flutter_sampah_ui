import 'package:flutter/material.dart';
import 'package:sampah_project/components/widgets.dart';

class PostClosed extends StatelessWidget {
  const PostClosed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 8.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: _PostClosed(),
          );
        },
      ),
    );
  }
}

class _PostClosed extends StatelessWidget {
  const _PostClosed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            height: double.infinity,
            width: 110.0,
            color: Colors.orange,
            child: Center(
              child: Text(
                'image',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 8.0,
          left: 8.0,
          child: ProfileAvatar(
            hasBorder: true,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          right: 8.0,
          child: Text(
            'Closed by Nurali',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
