import 'package:adv_basics/numbered_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NumberedCircle(
                    size: 36,
                    number: (data['question_index'] as int) + 1,
                    backgroundColor:
                        data['correct_answer'] == data['chosen_answer']
                            ? const Color.fromARGB(255, 123, 166, 124)
                            : const Color.fromARGB(255, 211, 96, 90),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 130, 198, 132),
                          ),
                        ),
                        Text(
                          data['chosen_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 198, 130, 130),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
