void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78]
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95]
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85]
    }
  ];

  Map<String, double> averageScore = {};

  for (var std in students) {

    String name = std['name'];
    List<int> score = List<int>.from(std['scores']);
    double average = score.reduce((x, y) => x + y) / score.length;
    averageScore[name] = double.parse(average.toStringAsFixed(2));
    
  }

  var Sort = averageScore.entries.toList()
    ..sort((x, y) => y.value.compareTo(x.value));

  Map<String, double> ans = {for (var entry in Sort) entry.key: entry.value};

  print(ans);
}
