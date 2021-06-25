import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampah_project/components/circle_button.dart';
import 'package:sampah_project/components/post_container.dart';
import 'package:sampah_project/components/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.green,
            title: Text(
              'SAMPAH',
              style: GoogleFonts.mcLaren(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
            ),
            centerTitle: false,
            floating: true,
            automaticallyImplyLeading: false,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () => print('Search'),
              )
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: AskQuestionContainer(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: ButtonPlus(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: AvatarList(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: PostClosed(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostContainer();
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
