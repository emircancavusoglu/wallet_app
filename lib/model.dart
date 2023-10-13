class Profile{
  final String? name;
  final String? surname;
  final double? money;
  final String? moneyType;
  Profile(this.name, this.surname, this.money, this.moneyType);
}
class ProfileItems{
  late List<Profile> profiles;
  ProfileItems(){ //When the constructor is first opened
    profiles = [
      Profile("emircan", "cavusoglu", 1000.0,"tl"),
   ];
  }
}

enum MoneyType {
  euro,
  usd,
  tl
}