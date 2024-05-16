enum HomeScreenStatus {
  waiting,
  loading,
  success,
  error;

  bool get isWaiting => this == HomeScreenStatus.waiting;

  bool get isLoading => this == HomeScreenStatus.loading;

  bool get isSuccess => this == HomeScreenStatus.success;

  bool get isError => this == HomeScreenStatus.error;
}