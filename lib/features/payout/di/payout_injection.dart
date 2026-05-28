import 'package:customer_nzubia_global/features/payout/data/repositories/payout_repository.dart';
import 'package:customer_nzubia_global/core/network/dio_client.dart';
import 'package:get_it/get_it.dart';

void registerPayoutDependencies() {
  final sl = GetIt.instance;
  
  // Repository
  sl.registerLazySingleton<PayoutRepository>(
    () => PayoutRepositoryImpl(sl<DioClient>()),
  );
}
