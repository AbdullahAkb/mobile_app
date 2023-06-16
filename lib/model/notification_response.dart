class NoticationResponse {
  late List<Message> message;

  NoticationResponse({required this.message});

  NoticationResponse.fromJson(Map<String, dynamic> json) {
    if (json['message'] != null) {
      message = [];
      json['message'].forEach((v) {
        message.add(Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message.map((v) => v.toJson()).toList();
    return data;
  }
}

class Message {
  late String? name;
  late String? creation;
  late String? modified;
  late String? modifiedBy;
  late String? owner;
  late int? docstatus;
  late dynamic parent;
  late dynamic parentfield;
  late dynamic parenttype;
  late int? idx;
  late String? forUser;
  late String? type;
  late String? fromUser;
  late String? subject;
  late dynamic emailContent;
  late String? documentName;
  late String? documentType;
  late int? read;
  late dynamic nUserTags;
  late dynamic nComments;
  late dynamic nAssign;
  late dynamic nLikedBy;
  late dynamic nSeen;
  late dynamic attachedFile;

  Message(
      {this.name,
      this.creation,
      this.modified,
      this.modifiedBy,
      this.owner,
      this.docstatus,
      this.parent,
      this.parentfield,
      this.parenttype,
      this.idx,
      this.forUser,
      this.type,
      this.fromUser,
      this.subject,
      this.emailContent,
      this.documentName,
      this.documentType,
      this.read,
      this.nUserTags,
      this.nComments,
      this.nAssign,
      this.nLikedBy,
      this.nSeen,
      this.attachedFile});

  Message.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    creation = json['creation'];
    modified = json['modified'];
    modifiedBy = json['modified_by'];
    owner = json['owner'];
    docstatus = json['docstatus'];
    parent = json['parent'];
    parentfield = json['parentfield'];
    parenttype = json['parenttype'];
    idx = json['idx'];
    forUser = json['for_user'];
    type = json['type'];
    fromUser = json['from_user'];
    subject = json['subject'];
    emailContent = json['email_content'];
    documentName = json['document_name'];
    documentType = json['document_type'];
    read = json['read'];
    nUserTags = json['_user_tags'];
    nComments = json['_comments'];
    nAssign = json['_assign'];
    nLikedBy = json['_liked_by'];
    nSeen = json['_seen'];
    attachedFile = json['attached_file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['creation'] = creation;
    data['modified'] = modified;
    data['modified_by'] = modifiedBy;
    data['owner'] = owner;
    data['docstatus'] = docstatus;
    data['parent'] = parent;
    data['parentfield'] = parentfield;
    data['parenttype'] = parenttype;
    data['idx'] = idx;
    data['for_user'] = forUser;
    data['type'] = type;
    data['from_user'] = fromUser;
    data['subject'] = subject;
    data['email_content'] = emailContent;
    data['document_name'] = documentName;
    data['document_type'] = documentType;
    data['read'] = read;
    data['_user_tags'] = nUserTags;
    data['_comments'] = nComments;
    data['_assign'] = nAssign;
    data['_liked_by'] = nLikedBy;
    data['_seen'] = nSeen;
    data['attached_file'] = attachedFile;
    return data;
  }
}
