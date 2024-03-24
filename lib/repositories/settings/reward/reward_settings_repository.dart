});
    return clientList;
  }

  Future<bool> revokeClient(queryParameters) async {
    bool result = false;
    await root.ajax
        .post(root.apiRouteMapper['joinbonus_revoke']!, data: queryParameters)
        .then((value) {
      result = true;
    });
    return result;
  }
}