
class DashboardModel {
  final Strength strength;
  final Stamina stamina;
  final Level level;
  final ChartData chartData;

  const DashboardModel({
    this.strength = const Strength(),
    this.stamina = const Stamina(),
    this.level = const Level(),
    this.chartData = const ChartData(),
  });

  factory DashboardModel.fromJson(Map<String, dynamic> json) {
    return DashboardModel(
      strength: Strength.fromJson(json['strength']),
      stamina: Stamina.fromJson(json['stamina']),
      level: Level.fromJson(json['level']),
      chartData: ChartData.fromJson(json['chartData']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'strength': strength.toJson(),
      'stamina': stamina.toJson(),
      'level': level.toJson(),
      'chartData': chartData.toJson(),
    };
  }
}

class Strength {
  final int value;
  final int percentage;

  const Strength({this.value = 0, this.percentage = 0});

  factory Strength.fromJson(Map<String, dynamic> json) {
    return Strength(
      value: json['value'],
      percentage: json['percentage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'percentage': percentage,
    };
  }
}

class Stamina {
  final int value;
  final int percentage;

  const Stamina({this.value = 0, this.percentage = 0});

  factory Stamina.fromJson(Map<String, dynamic> json) {
    return Stamina(
      value: json['value'],
      percentage: json['percentage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'percentage': percentage,
    };
  }
}

class Level {
  final int currentLevel;
  final int currentXP;
  final int requiredXP;
  final String levelProgress;

 const Level({
    this.currentLevel = 0,
    this.currentXP = 0,
    this.requiredXP = 0,
    this.levelProgress = '',
  });

  factory Level.fromJson(Map<String, dynamic> json) {
    return Level(
      currentLevel: json['currentLevel'],
      currentXP: json['currentXP'],
      requiredXP: json['requiredXP'],
      levelProgress: json['levelProgress'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'currentLevel': currentLevel,
      'currentXP': currentXP,
      'requiredXP': requiredXP,
      'levelProgress': levelProgress,
    };
  }
}

class ChartData {
  final List<DataPoint> greenData;
  final List<DataPoint> orangeData;

  const ChartData({
    this.greenData = const [],
    this.orangeData = const [],
  });

  factory ChartData.fromJson(Map<String, dynamic> json) {
    return ChartData(
      greenData: List<DataPoint>.from(
        json['greenData'].map((data) => DataPoint.fromJson(data)),
      ),
      orangeData: List<DataPoint>.from(
        json['orangeData'].map((data) => DataPoint.fromJson(data)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'greenData': greenData.map((data) => data.toJson()).toList(),
      'orangeData': orangeData.map((data) => data.toJson()).toList(),
    };
  }
  @override
  String toString() {
    return toJson().toString();
  }
}

class DataPoint {
  final String x;
  final double y;

  DataPoint(this.x, this.y);

  factory DataPoint.fromJson(Map<String, dynamic> json) {
    return DataPoint(
      json['x'],
      json['y'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'x': x,
      'y': y,
    };
  }
}
