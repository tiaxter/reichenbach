class Utils {
  // Stream the yield year progress percentage
  static Stream getYearProgress() async* {
    yield _getYearProgress();

    while (true) {
      yield _getYearProgress();
      await Future.delayed(const Duration(hours: 12));
    }
  }

  // Stream that yield day progress percentage
  static Stream getDayProgress() async* {
    yield _getDayProgress();

    while (true) {
      yield _getDayProgress();
      await Future.delayed(const Duration(hours: 1));
    }
  }

  // Method used to retrieve day progress percentage
  static double _getDayProgress() {
    var currentDay = DateTime.now();
    var totalMinutesInDay = 60 * 24;
    var beginOfCurrentDay = DateTime(
      currentDay.year,
      currentDay.month,
      currentDay.day,
      0,
      0,
      0,
    );

    var minutesCount = DateTime.now().difference(beginOfCurrentDay).inMinutes;

    return (100 * minutesCount) / totalMinutesInDay;
  }

  // Method used to retrieve day progress percentage
  static double _getYearProgress() {
    var currentYear = DateTime.now().year;
    var beginOfTheYear = DateTime(currentYear);

    // Get current day number from the year begin
    var dayFromYearBegin = DateTime.now().difference(beginOfTheYear).inDays;

    // Get the days count of the current year
    var endOfTheYear = DateTime(currentYear, 12, 31, 23, 59 , 59);
    var daysCountOfYear = endOfTheYear.difference(beginOfTheYear).inDays;

    return (100 * dayFromYearBegin) / daysCountOfYear;
  }
}