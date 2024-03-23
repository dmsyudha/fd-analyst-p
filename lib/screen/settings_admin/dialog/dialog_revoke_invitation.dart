class DialogRevokeInvitation extends StatefulWidget {
  const DialogRevokeInvitation({Key? key}) : super(key: key);

  @override
  _DialogRevokeInvitationState createState() => _DialogRevokeInvitationState();
}

class _DialogRevokeInvitationState extends State<DialogRevokeInvitation> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding:
          EdgeInsets.only(top: 15.0, right: 20.0, bottom: 15.0, left: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(AppLocalizations.of(context)!.revokeInvitation,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: ColorList().background9Color,
                          fontWeight: FontWeight.bold,
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(root.RESPONSIVE_HEADER_FONT_SIZE),
                        )),
                  ),
                ]),
            SizedBox(height: 15),