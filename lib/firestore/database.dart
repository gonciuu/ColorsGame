
import 'package:cloud_firestore/cloud_firestore.dart';

class Database{

  final CollectionReference highScores = Firestore.instance.collection("high_scores");


}