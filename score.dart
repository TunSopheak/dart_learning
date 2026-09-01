//Tun Sopheak
import 'dart:io';

class Score {
  double _mis = 0;
  double _window = 0;
  double _ooad = 0;
  double _mb = 0;
  double _se = 0;

  Score(double mis, double window, double ooad, double mb, double se) {
    MIS = mis;
    Window = window;
    OOAD = ooad;
    MB = mb;
    SE = se;
  }

  set MIS(double mis) {
    _mis = mis;
  }

  set Window(double window) {
    _window = window;
  }

  set OOAD(double ooad) {
    _ooad = ooad;
  }

  set MB(double mb) {
    _mb = mb;
  }

  set SE(double se) {
    _se = se;
  }

  double get MIS => _mis;
  double get Window => _window;
  double get OOAD => _ooad;
  double get MB => _mb;
  double get SE => _se;

  double getTotal() {
    return _mis + _window + _ooad + _mb + _se;
  }

  double getAverage() {
    return getTotal() / 5;
  }

  String getGrade() {
    double avg = getAverage();

    if (avg >= 90) {
      return "A";
    } else if (avg >= 80) {
      return "B";
    } else if (avg >= 70) {
      return "C";
    } else if (avg >= 60) {
      return "D";
    } else {
      return "F";
    }
  }
}

void main() {
  Score score = Score(85, 78, 90, 88, 75);

  print("MIS: ${score.MIS}");
  print("Window: ${score.Window}");
  print("OOAD: ${score.OOAD}");
  print("MB: ${score.MB}");
  print("SE: ${score.SE}");

  print("--------------------");
  print("Total: ${score.getTotal()}");
  print("Average: ${score.getAverage()}");
  print("Grade: ${score.getGrade()}");
}
