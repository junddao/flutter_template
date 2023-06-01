import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

import '../index.dart';

final networkNotifierProvider = NotifierProvider<NetworkNotifier, NetworkStates>(
  () {
    return NetworkNotifier()..networkInitial();
  },
  name: 'networkNotifierProvider',
);

class NetworkNotifier extends Notifier<NetworkStates> {
  @override
  NetworkStates build() {
    ref.listenSelf((previous, next) {
      if (previous != null && (previous.status == NetworkState.initial) == false) {
        if (next.status == NetworkState.success) {
          tsShowSnackBar(content: '인터넷이 다시 연결되었습니다.');
        }
        if (next.status == NetworkState.failure) {
          tsShowSnackBar(content: '인터넷 연결이 끊어졌습니다.');
        }
      }
    });
    return const NetworkStates();
  }

  void networkInitial() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      state = NetworkStates(previous: state.status, status: NetworkState.failure, message: 'data');
    }
    _observe();
  }

  void _observe() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        state = NetworkStates(previous: state.status, status: NetworkState.failure, message: 'data');
      } else {
        state = NetworkStates(previous: state.status, status: NetworkState.success);
      }
    });
  }
}

class NetworkStates<T> extends Equatable {
  final NetworkState? previous;
  final NetworkState status;
  final String? message;

  const NetworkStates({
    this.previous,
    this.status = NetworkState.initial,
    this.message,
  });

  @override
  List<Object?> get props => [previous, status, message];

  NetworkStates copyWith({
    NetworkState? status,
    T? data,
    String? message,
  }) {
    return NetworkStates(
      previous: previous ?? this.previous,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }
}
