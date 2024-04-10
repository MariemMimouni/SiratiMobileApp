import 'package:flutter/material.dart';

import '../Menu/drawer.widget.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 10,
        title: Text('Skills'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.language),
            title: Text('Languages'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSkillCard('Arabic', 'Mother Language', context),
                  _buildSkillCard('English', 'Very Fluent', context),
                  _buildSkillCard('French', 'Fluent', context),
                  _buildSkillCard('German', 'Beginner', context),
                  _buildSkillCard('Turkish', 'Beginner', context),
                ],
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.emoji_objects),
            title: Text('Soft Skills'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSkillCard('Communication', 'Excellent', context),
                  _buildSkillCard('Problem Solving', 'Advanced', context),
                  _buildSkillCard('Teamwork', 'Advanced', context),
                  _buildSkillCard('Time Management', 'Excellent', context),
                ],
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.code),
            title: Text('Technical Skills'),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildListDelegate(
              [
                _buildSkillCard('Flutter', 'Intermediate', context),
                _buildSkillCard('Dart', 'Intermediate', context),
                _buildSkillCard('Firebase', 'Beginner', context),
                _buildSkillCard('Python', 'Intermediate', context),
                _buildSkillCard('Java', 'Intermediate', context),
                _buildSkillCard('Angular', 'Intermediate', context),
                _buildSkillCard('Firebase', 'Beginner', context),
                _buildSkillCard('Python', 'Intermediate', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(String skill, String level, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 150,
          height: 150,
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(skill, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onBackground),),
              Text(level, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).colorScheme.onSurface)),
            ],
          ),
        ),
      ),
    );
  }
}
