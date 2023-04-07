import 'dart:convert';

import 'package:metqr/model/Subject.dart';

Session sessionFromJson(String str) => Session.fromJson(json.decode(str));

String sessionToJson(Session data) => json.encode(data.toJson());

class Session {
  Session({
    this.subject,
    required this.lecturerId,
    this.lecturerName,
    this.assignedStudentsIds,
    this.datesString,
    this.dates,
    this.attendances,
    this.fromDate,
    this.toDate,
    this.fromTime,
    this.toTime,
    this.isRepeated,
    this.id,
    this.attendedStudentIds,
  });

  List<Subject>? subject;
  String? lecturerId;
  String? lecturerName;
  String? id;
  List<String>? assignedStudentsIds;
  String? datesString;
  List<String>? dates;
  String? fromDate;
  String? toDate;
  String? fromTime;
  String? toTime;
  bool? isRepeated;
  List<Attendance>? attendances;
  List<String>? attendedStudentIds;

  Session copyWith({
    List<Subject>? subject,
    String? lecturerId,
    String? lecturerName,
    List<String>? assignedStudentsIds,
    String? datesString,
    String? id,
    List<String>? dates,
    List<Attendance>? attendances,
    String? fromDate,
    String? toDate,
    List<String>? attendedStudentIds,
    String? fromTime,
    String? toTime,
    bool? isRepeated,
  }) =>
      Session(
        isRepeated: isRepeated ?? this.isRepeated,
        fromDate: fromDate ?? this.fromDate,
        toDate: toDate ?? this.toDate,
        id: id ?? this.id,
        fromTime: fromTime ?? this.fromTime,
        attendedStudentIds: attendedStudentIds ?? this.attendedStudentIds,
        toTime: toTime ?? this.toTime,
        subject: subject ?? this.subject,
        lecturerId: lecturerId ?? this.lecturerId,
        lecturerName: lecturerName ?? this.lecturerName,
        assignedStudentsIds: assignedStudentsIds ?? this.assignedStudentsIds,
        datesString: datesString ?? this.datesString,
        dates: dates ?? this.dates,
        attendances: attendances ?? this.attendances,
      );

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        subject: json['subject'] != null
            ? List<Subject>.from(
                json["subject"].map((x) => Subject.fromJson(x)))
            : [],
        lecturerId: json["lecturerId"],
        id: json["id"],
        lecturerName: json["lecturerName"],
        fromDate: json["fromDate"],
        toDate: json["toDate"],
        fromTime: json["fromTime"],
        toTime: json["toTime"],
        isRepeated: json["isRepeated"],
        assignedStudentsIds: json["assignedStudentsIds"] == null
            ? []
            : List<String>.from(json["assignedStudentsIds"].map((x) => x)),
        attendedStudentIds: json["attendedStudentIds"] == null
            ? []
            : List<String>.from(json["attendedStudentIds"].map((x) => x)),
        datesString: json["datesString"],
        dates: json["dates"] == null
            ? []
            : List<String>.from(json["dates"].map((x) => x)),
        attendances: json['attendances'] != null
            ? List<Attendance>.from(
                json["attendances"].map((x) => Attendance.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "fromDate": fromDate,
        "toDate": toDate,
        "id": id,
        "attendedStudentIds":
            List<dynamic>.from(attendedStudentIds!.map((x) => x)),
        "fromTime": fromTime,
        "toTime": toTime,
        "isRepeated": isRepeated,
        "subject": List<dynamic>.from(subject!.map((x) => x.toJson())),
        "lecturerId": lecturerId,
        "lecturerName": lecturerName,
        "assignedStudentsIds":
            List<dynamic>.from(assignedStudentsIds!.map((x) => x)),
        "datesString": datesString,
        "dates": List<dynamic>.from(dates!.map((x) => x)),
        "attendances": List<dynamic>.from(attendances!.map((x) => x.toJson())),
      };
}

class Attendance {
  Attendance({
    required this.date,
    required this.attendedStudents,
  });

  String date;
  List<String> attendedStudents;

  Attendance copyWith({
    String? date,
    List<String>? attendedStudents,
  }) =>
      Attendance(
        date: date ?? this.date,
        attendedStudents: attendedStudents ?? this.attendedStudents,
      );

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        date: json["date"],
        attendedStudents:
            List<String>.from(json["attendedStudents"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "attendedStudents": List<dynamic>.from(attendedStudents.map((x) => x)),
      };
}
