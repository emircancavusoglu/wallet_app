//be able to send money to those who have sent money before
class UserManagement{
  void writeMoney(User user){
    print(user.money);
  }
}
int calculateMoney(List<User>user){
  int initialValue =0;
  int sum = 0;
  for(var item in user){
    sum += item.money;
  }
  final sumMoney = user.fold(initialValue, (previousValue, element) => previousValue+element.money);
  return sumMoney;
}
class User{
  final String name;
  final String ibanNo;
  final int money;
  User(this.name, this.ibanNo, this.money);
}
class SenderPerson extends User{
  int role;
  SenderPerson(String name, String ibanNo, int money, this.role) : super(name,ibanNo, money);

}