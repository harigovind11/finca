import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/account/i_account_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_actor_event.dart';
part 'account_actor_state.dart';
part 'account_actor_bloc.freezed.dart';

@injectable
class AccountActorBloc extends Bloc<AccountActorEvent, AccountActorState> {
  final IAccountRepository _accountRepository;
  AccountActorBloc(this._accountRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const AccountActorState.actionInProgress());
      final possibleFailure =
          await _accountRepository.delete(event.accountEntity);
      emit(
        possibleFailure.fold(
          (f) => AccountActorState.deleteFailure(f),
          (_) => const AccountActorState.deleteSucess(),
        ),
      );
    });
  }
}
