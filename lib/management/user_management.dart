//be able to send money to those who have sent money before
class UserManagement <T extends SenderPerson>{
  final T sender;
  UserManagement(this.sender);
  void writeMoney(User user){
    print(user.money);
  }
int calculateMoney(List<User>user){
  int sum = 0;
  int initialValue = sender.role == 1 ? sender.money : 0;

  final sumMoney = user.fold(initialValue, (previousValue, element) => previousValue+element.money);
  return sumMoney;
}
}
class User{
  final String name;
  final String ibanNo;
  final int money;
  User(this.name, this.ibanNo, this.money);
}
class SenderPerson extends User{
  final int role;
  SenderPerson(String name, String ibanNo, int money, this.role) : super(name,ibanNo, money);
}