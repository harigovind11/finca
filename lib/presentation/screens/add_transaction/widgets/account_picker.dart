import 'package:auto_route/auto_route.dart';
import 'package:finca/application/account/account_watcher/account_watcher_bloc.dart';
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AccountPicker extends HookWidget {
  const AccountPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transactionFormBloc = context.read<TransactionFormBloc>();

    final _accountSelected = useState(false);

    return BlocBuilder<AccountWatcherBloc, AccountWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
            loadSuccess: (state) {
              return LimitedBox(
                maxHeight: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: state.accounts.length,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      return ItemWidget(
                        selected: false,
                        title: 'Add Account',
                        // icon: Icons.plus_one.codePoint,
                        onPressed: () =>
                            AutoRouter.of(context).push(AddAccountRoute()),
                      );
                    } else {
                      final account = state.accounts[index - 1];
                      return ItemWidget(
                        selected: account.id ==
                            BlocProvider.of<TransactionFormBloc>(context)
                                .state
                                .transactionEntity
                                .accountId,
                        title: account.accountName.getOrCrash(),
                        subtitle: account.accountBalance.getOrCrash(),
                        // icon: account.icon.codePoint,
                        onPressed: () {
                          transactionFormBloc.add(
                              TransactionFormEvent.accountSelected(
                                  account.id.getOrCrash()));
                          transactionFormBloc.isAccountSelected = true;
                          _accountSelected.value = !_accountSelected.value;
                          print(account.id.getOrCrash());
                        },
                      );
                    }
                  },
                ),
              );
            },
            orElse: () => const Text(
                  'There is no data ',
                  style: kTextStyleLight,
                ));
      },
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.selected,
    required this.title,
    required this.onPressed,
    this.subtitle,
  });

  final bool selected;
  final VoidCallback onPressed;
  final String? subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    final shape = selected
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: kBlueShade,
              width: 2,
            ),
          )
        : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          );

    return SizedBox(
      width: 150,
      child: Card(
        color: selected ? kBluegreyShade : kOutlineWhite,
        clipBehavior: Clip.antiAlias,
        shape: shape,
        child: InkWell(
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(20),
                title: Text(title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: selected ? kTextStyleLight : kTextStyleDark),
                // subtitle: subtitle != null
                //     ? Text(
                //         subtitle!,
                //         overflow: TextOverflow.ellipsis,
                //         maxLines: 1,
                //         style: selected ? kTextStyleLight : kTextStyleDark,
                //       )
                //     : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
