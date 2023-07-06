const numDays = 7;

class DaysLeftInWeek {
  int currentDay = DateTime.now().weekday.toInt();
  int howManyDaysLeft() {
    return numDays - currentDay;
  }
}

void main() {
  var currentDay = DaysLeftInWeek();
  print('Today is day ${currentDay.currentDay}');
  print('We have ${currentDay.howManyDaysLeft()} day(s) left in the week');
}
