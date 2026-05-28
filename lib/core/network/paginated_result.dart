
class PaginatedResult<T> {
  final List<T> data;
  final PaginationMeta meta;

  PaginatedResult({required this.data, required this.meta});
}

class PaginationMeta {
  final int total;
  final int page;
  final int limit;
  final int lastPage;

  PaginationMeta({
    required this.total,
    required this.page,
    required this.limit,
    required this.lastPage,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) {
    return PaginationMeta(
      total: json['total'] ?? 0,
      page: json['page'] ?? 1,
      limit: json['limit'] ?? 10,
      lastPage: json['last_page'] ?? 1,
    );
  }
}
