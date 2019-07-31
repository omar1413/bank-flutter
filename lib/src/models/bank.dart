class Bank {
  String name;
  String logoUri;
  double dollarBuyPrice;
  double dollarSellPrice;
  String dollarMovement;

  Bank(
      {this.name,
      String logoName,
      this.dollarBuyPrice,
      this.dollarSellPrice,
      this.dollarMovement})
      : this.logoUri = 'images/' + logoName;
}
