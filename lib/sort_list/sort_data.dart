List<CustomObj> sortCustomObjList(final List<CustomObj> unsortedList) {
  final List<CustomObj> sortedList = [];
  String? currentParentId;

  while (unsortedList.isNotEmpty) {
    final currentSortedElementIndex = _getElementIndexById(unsortedList, currentParentId);
    currentParentId = unsortedList[currentSortedElementIndex].id;

    sortedList.add(unsortedList[currentSortedElementIndex]);
    unsortedList.removeAt(currentSortedElementIndex);
  }

  return sortedList;
}

int _getElementIndexById(
  final List<CustomObj> customObjectList,
  final String? id,
) {
  for (var i = 0; i < customObjectList.length; i++) {
    if (customObjectList[i].parentId == id) {
      return i;
    }
  }

  throw 'id not found on given list';
}

class CustomObj {
  const CustomObj({
    required this.id,
    required this.name,
    required this.parentId,
  });

  final String id;
  final String name;
  final String? parentId;
}
