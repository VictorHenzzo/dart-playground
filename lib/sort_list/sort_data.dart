List<CustomObj> sortCustomObjList(final List<CustomObj> unsortedElements) {
  final List<CustomObj> sortedElements = [];
  String? currentParentId;

  while (unsortedElements.isNotEmpty) {
    final currentHandledElementIndex = _getElementIndexById(unsortedElements, currentParentId);
    currentParentId = unsortedElements[currentHandledElementIndex].id;

    sortedElements.add(unsortedElements[currentHandledElementIndex]);
    unsortedElements.removeAt(currentHandledElementIndex);
  }

  return sortedElements;
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

  throw Exception('id not found on given list');
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
