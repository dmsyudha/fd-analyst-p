return Future.value(null);
  }

  void showRevokeInvitationDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return DialogRevokeInvitation();
        }).then((confirmed) async {
      if (confirmed) {
        await revokeInvitation();
      }
    });
  }

  Future<void> revokeInvitation() async {
    var data = {
      "idList": getSelectedClientIds(),
    };
    await rewardSettingsCubit.revokeClient(data).then((success) {
      if (success) {
        initializeClientList();
        ComponentSnackbar.showSnackbar(
          AppLocalizations.of(context)!.revokeInvitationSuccess,
          backgroundColor: Colors.green,
        );
      }
    }).onError((DioError error, stackTrace) {
      resetSelectedClient();
    });

    return Future.value(null);
  }

  void resetSelectedClient() {
    setState(() {
      _selectAll = false;