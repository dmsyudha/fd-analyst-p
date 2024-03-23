      return result;
    });
  }

  Future<bool> revokeClient(entity) async {
    return await this.repository.revokeClient(entity);
  }
}