import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  final List<Map<String, String>> items = const [
    {
      'title': 'دورة Flutter',
      'subtitle': 'تعلم أساسيات بناء التطبيقات'
    },
    {
      'title': 'دورة SQL',
      'subtitle': 'تعلم قواعد البيانات والاستعلامات'
    },
    {
      'title': 'دورة UI/UX',
      'subtitle': 'تصميم واجهات احترافية'
    },
    {
      'title': 'برمجة الويب',
      'subtitle': 'HTML - CSS - JS'
    },
    {
      'title': 'متعلمين',
      'subtitle': 'قائمة المتعلمين الجدد'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.search, size: 24),
            SizedBox(width: 8),
            Text("البحث"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.book, color: Colors.blue),
            title: Text(
              items[index]['title']!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              items[index]['subtitle']!,
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 18),
            onTap: (){
            },
          );
        },
      ),
    );
  }
}