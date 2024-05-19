class PaginationHelper {
  static List paginate(List items, int pageSize, int pageNumber) {
    int startIndex = (pageNumber - 1) * pageSize;
    int endIndex = startIndex + pageSize;
    if (endIndex > items.length) {
      endIndex = items.length;
    }
    return items.sublist(startIndex, endIndex);
  }
}
