import 'package:playground/sort_list/sort_data.dart';

void main(List<String> arguments) {
  final List<CustomObj> unsortedObjectList = [
    CustomObj(id: 'jshshe', name: '3', parentId: 'iwndmn'),
    CustomObj(id: 'urodne', name: '5', parentId: 'qerispf'),
    CustomObj(id: 'oqndie', name: '1', parentId: null),
    CustomObj(id: 'iwndmn', name: '2', parentId: 'oqndie'),
    CustomObj(id: 'qienfiw', name: '6', parentId: 'urodne'),
    CustomObj(id: 'qerispf', name: '4', parentId: 'jshshe'),
  ];

  final sortedList = sortCustomObjList(unsortedObjectList);

  for (var element in sortedList) {
    print(element.name);
  }
}
