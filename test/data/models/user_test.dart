import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:sejun_chat_app/data/models/user.dart';

void main(){
  test('create user', () {
      final user = User(id: '1', username: 'username1', lastSeen: DateTime.fromMillisecondsSinceEpoch(893478923748));

      expect(user.id, '1');
      expect(user.username, 'username1');
      expect(user.lastSeen, DateTime.fromMillisecondsSinceEpoch(893478923748));
      expect(user.active, false);
      expect(user.photoUrl, null);
      expect(user, isA<User>());
  });

  test('user fromJson', () {
    final jsonData = '''{
      "id": "1",
      "username": "username1",
      "lastSeen": "2021-11-03"}
    '''
    .trim();

    final user = User.fromJson(jsonDecode(jsonData) as Map<String, dynamic>);

    expect(user.id, '1');
    expect(user.username, 'username1');
    expect(user.lastSeen, DateTime(2021, 11, 3));
    expect(user.active, false);
    expect(user.photoUrl, null);
    expect(user, isA<User>());
  });
}