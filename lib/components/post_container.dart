import 'package:flutter/material.dart';
import 'package:sampah_project/components/widgets.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PostHeader(),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                    'Jl. Wibisana I, Sukaluyu, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41'),
                Divider(
                  height: 10.0,
                  thickness: 3.0,
                ),
                const SizedBox(
                  height: 6.0,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: _PhotoBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: _PostStatus(),
          ),
        ],
      ),
    );
  }
}

class _PostStatus extends StatelessWidget {
  const _PostStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 13.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: Text(
                '777',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            Text(
              '777 Comments',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              '777 Bookmarked',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            _PushButton(
              icon: Icon(
                Icons.thumb_up_outlined,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Support',
              onTap: () => print('Support'),
            ),
            _PushButton(
              icon: Icon(
                Icons.comment,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Comments',
              onTap: () => print('Comments'),
            ),
            _PushButton(
              icon: Icon(
                Icons.bookmark,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Bookmarked',
              onTap: () => print('Bookmarked'),
            ),
          ],
        ),
      ],
    );
  }
}

class _PushButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final void Function() onTap;
  const _PushButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PhotoBox extends StatelessWidget {
  const _PhotoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 400.0,
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          'image',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  const _PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nurali",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    "12hr • ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () => print('More'),
        ),
      ],
    );
  }
}
