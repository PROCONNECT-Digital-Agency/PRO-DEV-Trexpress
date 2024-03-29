import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../core/di/dependency_manager.dart';
import '../notifier/add_address_notifier.dart';
import '../state/add_address_state.dart';

final addAddressProvider =
    StateNotifierProvider.autoDispose<AddAddressNotifier, AddAddressState>(
  (ref) => AddAddressNotifier(addressesRepository),
);
