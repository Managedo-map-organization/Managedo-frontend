class Semester {
  int id;
  int semesterNo;
  int durationInWeek;
  double targetedGPA;
  double achievedGPA;
  String semesterStatus;
  int fkEducationId;

  Semester({
    this.id,
    this.semesterNo,
    this.durationInWeek,
    this.targetedGPA,
    this.achievedGPA,
    this.semesterStatus,
    this.fkEducationId,
  });

  Semester.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          semesterNo: json['semesterNo'],
          durationInWeek: json['durationInWeek'],
          targetedGPA: json['targetedGPA'].toDouble(),
          achievedGPA: json['achievedGPA'].toDouble(),
          semesterStatus: json['semesterStatus'],
          fkEducationId: json['fkEducationId'],
        );

  Semester.copy(Semester from)
      : this(
          semesterNo: from.semesterNo,
          durationInWeek: from.durationInWeek,
          targetedGPA: from.targetedGPA,
          achievedGPA: from.achievedGPA,
          semesterStatus: from.semesterStatus,
          fkEducationId: from.fkEducationId,
        );

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'semesterNo': this.semesterNo,
    'durationInWeek': this.durationInWeek,
    'targetedGPA': this.targetedGPA,
    'achievedGPA': this.achievedGPA,
    'semesterStatus': this.semesterStatus,
    'fkEducationId': this.fkEducationId,
  };
}
