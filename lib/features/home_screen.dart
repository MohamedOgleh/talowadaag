import 'package:app/features/idea/idea_card.dart';
import 'package:flutter/material.dart';

import 'idea/idea_model.dart';
import 'idea/idea_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();
  List<IdeaModel> ideas = IdeaService.ideas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Ideas",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: ListView.builder(
          itemCount: ideas.length,
          itemBuilder: (context, index) => IdeaCard(
            owner: ideas.elementAt(index).owner,
            content: ideas.elementAt(index).content,
            upVoted: ideas.elementAt(index).upVoted,
            downVoted: ideas.elementAt(index).downVoted,
          ),
        ),
      ),
    );
  }
}
