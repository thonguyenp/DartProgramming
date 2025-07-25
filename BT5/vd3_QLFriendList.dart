void main ()
{
  Set<String> friendIds = {'user1', 'user2', 'user3'};

  //them ban
  friendIds.add('user4'); //oke

  //kiem tra ban be
  bool isFriend = friendIds.contains('user1');  //true

  //de xuat ban be
  Set<String> suggestions = {'user5', 'user6', 'user1'};
  var newFriends = suggestions.difference(suggestions); //loai bo nhung user da la ban
}