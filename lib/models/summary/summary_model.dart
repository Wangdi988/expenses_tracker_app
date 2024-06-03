class SummaryModel {
  num expenses = 0;
  num income = 0;
  num openingBalance = 0;
  String maxExpense = "Dinner at Restaurant";
  num totalTransactionsThisMonth = 1;

  SummaryModel({
    this.expenses = 0,
    this.income = 0,
    this.openingBalance = 0,
    this.maxExpense = '0',
    this.totalTransactionsThisMonth = 0,
  });
}
