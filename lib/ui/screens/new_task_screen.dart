import 'package:flutter/material.dart';
import '../widgets/profile_appbar.dart';
import '../widgets/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(),
      body: Column(
        children: [
          _buildSummarySection()
        ],
      ),
    );
  }

Widget _buildSummarySection() {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TaskSummaryCard(
                title: 'New Task',
                count: '34',
              ),
              TaskSummaryCard(
                title: 'Completed',
                count: '34',
              ),
              TaskSummaryCard(
                title: 'In Progress',
                count: '34',
              ),
              TaskSummaryCard(
                title: 'Cancelled',
                count: '34',
              ),
            ],
          ),
        );
  }
}


