import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
const HomePage({super.key});
@override
Widget build(BuildContext context) {
// TODO: API로 오늘의 Schedule 목록 불러오기
final schedules = [
{'time': '09:00', 'name': '아모크라 625mg', 'badge': '식후'},
{'time': '12:30', 'name': '메트포르민 500mg', 'badge': '식후'},
{'time': '18:00', 'name': '로수바스타틴 10mg', 'badge': '취침'},
];
return Scaffold(
appBar: AppBar(title: const Text('오늘 복약')),
body: ListView.separated(
padding: const EdgeInsets.all(12),
itemBuilder: (_, i) {
final s = schedules[i];
return Card(
child: ListTile(
title: Text('${s['time']} • ${s['name']}'),
subtitle: Text('${s['badge']}'),
trailing: Wrap(spacing: 8, children: [
ElevatedButton(onPressed: (){}, child: const Text('복용')),
OutlinedButton(onPressed: (){}, child: const Text('스누즈')),
]),
),
);
},
separatorBuilder: (_, __) => const SizedBox(height: 8),
itemCount: schedules.length,
),
);
}
}