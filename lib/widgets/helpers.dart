import 'dart:math';

final Map<int,String> daysofWeek = {
  1 : 'Mon',
  2 : 'Tue',
  3 : 'Wed',
  4 : 'Thu',
  5 : 'Fri',
  6 : 'Sat',
  7 : 'Sun',
};
 
int randBetween(int min, int max) {
  return min + Random().nextInt(max - min);
}