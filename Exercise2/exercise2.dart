void main() {
 
  List<String> words = ["apple", "cat", "banana", "dog", "elephant"];

    Map<String, int> wordLengths = {};

  for (String word in words) {
    wordLengths[word] = word.length;
  }

  print("All words and lengths:");
  print(wordLengths);
  print("");

  print("Words with length greater than 4:");
  wordLengths.forEach((word, length) {
    if (length > 4) {
      print("$word has length $length");
    }
  });

  print("");

  print("Using associateWith:");
  Map<String, int> wordLengths2 = words.asMap().map(
    (index, word) => MapEntry(word, word.length),
  );

  wordLengths2.entries.where((entry) => entry.value > 4).forEach((entry) {
    print("${entry.key} has length ${entry.value}");
  });
}
