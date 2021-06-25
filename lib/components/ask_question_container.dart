import 'package:flutter/material.dart';
import 'package:sampah_project/components/widgets.dart';

class AskQuestionContainer extends StatelessWidget {
  const AskQuestionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Punya pertanyaan mengenai sampah?',
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
