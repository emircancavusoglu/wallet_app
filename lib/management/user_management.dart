//be able to send money to those who have sent money before
class UserManagement{
  void writeMoney(User user){
    print(user.money);
  }
}

class User{
  final String name;
  final int ibanNo;
  final int money;
  User(this.name, this.ibanNo, this.money);
}