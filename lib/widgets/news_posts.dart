import 'package:flutter/material.dart';

class NewsPosts extends StatelessWidget {
  const NewsPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("assets/file-20231116-29-xjji4m.jpg",
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Text(
            "Shows like ‘Scandal’ and ‘Madam Secretary’ inspire women to become involved in politics in real life",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Text(
            "Hillary Clinton famously did not win the 2016 election and become the first female U.S. president. Yet Clinton’s presidential campaign still resonated with many women who have said it made them more likely to get involved in politics When women run for office, it can inspire other women and girls to become more politically active. Clinton, Vice President Kamala Harris, presidential candidate Nikki Haley and other high-profile female politicians have motivated women to follow in their footsteps and consider running for office.",
            style: TextStyle(fontSize: 14, color: Colors.black45),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
