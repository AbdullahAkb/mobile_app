import 'package:flutter/material.dart';
import 'package:mobile_app/config/frappe_icons.dart';
import 'package:mobile_app/utils/frappe_icon.dart';

class AttachmentBottomSheet extends StatelessWidget {
  final void Function() onAddAttachments;
  final void Function() onSelectAttachments;

  const AttachmentBottomSheet({
    required this.onAddAttachments,
    required this.onSelectAttachments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text('Add Attachments'),
          onTap: onAddAttachments,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          leading: const FrappeIcon(
            FrappeIcons.attachment,
          ),
        ),
        ListTile(
          onTap: onSelectAttachments,
          title: const Text('Select Attachments'),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          leading: const FrappeIcon(
            FrappeIcons.small_file_attach,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
