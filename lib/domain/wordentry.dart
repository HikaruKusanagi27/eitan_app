enum WordEntry {
  analytics(term: 'analytics', meaning: 'アナリティクス'),
  delete(term: 'delete', meaning: 'デリート'),
  signIn(term: 'sign in', meaning: 'サインイン'),
  hosting(term: 'hosting', meaning: 'ホスティング');
  

  const WordEntry({required this.term, required this.meaning});

  final String term;
  final String meaning;
}