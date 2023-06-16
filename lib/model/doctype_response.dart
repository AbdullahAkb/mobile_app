class DoctypeResponse {
  late List<DoctypeDoc> docs;
  late String userSettings;

  DoctypeResponse({required this.docs, required this.userSettings});

  DoctypeResponse.fromJson(Map<dynamic, dynamic> json) {
    if (json['docs'] != null) {
      docs = [];
      json['docs'].forEach((v) {
        docs.add(new DoctypeDoc.fromJson(Map<dynamic, dynamic>.from(v)));
      });
    }
    userSettings = json['user_settings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docs'] = docs.map((v) => v.toJson()).toList();
    data['user_settings'] = userSettings;
    return data;
  }
}

class DoctypeDoc {
  late String? doctype;
  late String name;
  late String? owner;
  late String? creation;
  late String? modified;
  late String? modifiedBy;
  late int? idx;
  late int? docstatus;
  late String? searchFields;
  late int issingle;
  late int? istable;
  late int? editableGrid;
  late int? trackChanges;
  late String module;
  late String? autoname;
  late String? nameCase;
  late String? titleField;
  late String? subjectField;
  late String? senderField;
  late String? imageField;
  late String? sortField;
  late String? sortOrder;
  late String? description;
  late int? readOnly;
  late int? inCreate;
  late int? allowCopy;
  late int? allowRename;
  late int? allowImport;
  late int? hideToolbar;
  late int? trackSeen;
  late int? maxAttachments;
  late String? documentType;
  late String? icon;
  late String? engine;
  late int? isSubmittable;
  late int? showNameInGlobalSearch;
  late int? custom;
  late int? beta;
  late int? hasWebView;
  late int? allowGuestToView;
  late int? trackViews;
  late int? allowEventsInTimeline;
  late int? allowAutoRepeat;
  late int? quickEntry;
  late int? showPreviewPopup;
  late int? isTree;
  late int? emailAppendTo;
  late int? indexWebPagesForSearch;
  late List<DoctypeField> fields;
  late Map? fieldsMap;

  DoctypeDoc(
      {this.doctype,
      required this.name,
      this.owner,
      this.creation,
      this.modified,
      this.modifiedBy,
      this.idx,
      this.docstatus,
      this.searchFields,
      required this.issingle,
      this.istable,
      this.editableGrid,
      this.trackChanges,
      required this.module,
      this.autoname,
      this.nameCase,
      this.titleField,
      this.subjectField,
      this.senderField,
      this.imageField,
      this.sortField,
      this.sortOrder,
      this.description,
      this.readOnly,
      this.inCreate,
      this.allowCopy,
      this.allowRename,
      this.allowImport,
      this.hideToolbar,
      this.trackSeen,
      this.maxAttachments,
      this.documentType,
      this.icon,
      this.engine,
      this.isSubmittable,
      this.showNameInGlobalSearch,
      this.custom,
      this.beta,
      this.hasWebView,
      this.allowGuestToView,
      this.trackViews,
      this.allowEventsInTimeline,
      this.allowAutoRepeat,
      this.quickEntry,
      this.showPreviewPopup,
      this.isTree,
      this.emailAppendTo,
      this.indexWebPagesForSearch,
      required this.fields,
      this.fieldsMap});

  DoctypeDoc.fromJson(Map<dynamic, dynamic> json) {
    doctype = json['doctype'];
    name = json['name'];
    owner = json['owner'];
    creation = json['creation'];
    modified = json['modified'];
    modifiedBy = json['modified_by'];
    idx = json['idx'];
    docstatus = json['docstatus'];
    searchFields = json['search_fields'];
    issingle = json['issingle'];
    istable = json['istable'];
    editableGrid = json['editable_grid'];
    trackChanges = json['track_changes'];
    module = json['module'];
    autoname = json['autoname'];
    nameCase = json['name_case'];
    titleField = json['title_field'];
    subjectField = json['subject_field'];
    senderField = json['sender_field'];
    imageField = json['image_field'];
    sortField = json['sort_field'];
    sortOrder = json['sort_order'];
    description = json['description'];
    readOnly = json['read_only'];
    inCreate = json['in_create'];
    allowCopy = json['allow_copy'];
    allowRename = json['allow_rename'];
    allowImport = json['allow_import'];
    hideToolbar = json['hide_toolbar'];
    trackSeen = json['track_seen'];
    maxAttachments = json['max_attachments'];
    documentType = json['document_type'];
    icon = json['icon'];
    engine = json['engine'];
    isSubmittable = json['is_submittable'];
    showNameInGlobalSearch = json['show_name_in_global_search'];
    custom = json['custom'];
    beta = json['beta'];
    hasWebView = json['has_web_view'];
    allowGuestToView = json['allow_guest_to_view'];
    trackViews = json['track_views'];
    allowEventsInTimeline = json['allow_events_in_timeline'];
    allowAutoRepeat = json['allow_auto_repeat'];
    quickEntry = json['quick_entry'];
    showPreviewPopup = json['show_preview_popup'];
    isTree = json['is_tree'];
    emailAppendTo = json['email_append_to'];
    indexWebPagesForSearch = json['index_web_pages_for_search'];
    fieldsMap = json['field_map'];
    if (json['fields'] != null) {
      fields = [];
      json['fields'].forEach((v) {
        fields.add(new DoctypeField.fromJson(Map<dynamic, dynamic>.from(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doctype'] = doctype;
    data['name'] = name;
    data['owner'] = owner;
    data['creation'] = creation;
    data['modified'] = modified;
    data['modified_by'] = modifiedBy;
    data['idx'] = idx;
    data['docstatus'] = docstatus;
    data['search_fields'] = searchFields;
    data['issingle'] = issingle;
    data['istable'] = istable;
    data['editable_grid'] = editableGrid;
    data['track_changes'] = trackChanges;
    data['module'] = module;
    data['autoname'] = autoname;
    data['name_case'] = nameCase;
    data['title_field'] = titleField;
    data['title_field'] = senderField;
    data['title_field'] = subjectField;
    data['image_field'] = imageField;
    data['sort_field'] = sortField;
    data['sort_order'] = sortOrder;
    data['description'] = description;
    data['read_only'] = readOnly;
    data['in_create'] = inCreate;
    data['allow_copy'] = allowCopy;
    data['allow_rename'] = allowRename;
    data['allow_import'] = allowImport;
    data['hide_toolbar'] = hideToolbar;
    data['track_seen'] = trackSeen;
    data['max_attachments'] = maxAttachments;
    data['document_type'] = documentType;
    data['icon'] = icon;
    data['engine'] = engine;
    data['is_submittable'] = isSubmittable;
    data['show_name_in_global_search'] = showNameInGlobalSearch;
    data['custom'] = custom;
    data['beta'] = beta;
    data['has_web_view'] = hasWebView;
    data['allow_guest_to_view'] = allowGuestToView;
    data['track_views'] = trackViews;
    data['allow_events_in_timeline'] = allowEventsInTimeline;
    data['allow_auto_repeat'] = allowAutoRepeat;
    data['quick_entry'] = quickEntry;
    data['show_preview_popup'] = showPreviewPopup;
    data['is_tree'] = isTree;
    data['email_append_to'] = emailAppendTo;
    data['index_web_pages_for_search'] = indexWebPagesForSearch;
    data['fields_map'] = fieldsMap;
    data['fields'] = fields.map((v) => v.toJson()).toList();
    return data;
  }
}

class DoctypeField {
  late String? doctype;
  late String? name;
  late String? owner;
  late String? creation;
  late String? modified;
  late String? modifiedBy;
  late String? parent;
  late String? parentfield;
  late String? parenttype;
  late int? idx;
  late int? docstatus;
  late String fieldname;
  late String? dependsOn;
  late String? mandatoryDependsOn;
  late String? fetchFrom;
  late String? label;
  late String? fieldtype;
  late String? oldfieldtype;
  late dynamic options;
  late int? searchIndex;
  late int? hidden;
  late int? setOnlyOnce;
  late int? allowInQuickEntry;
  late int? printHide;
  late int? reportHide;
  late int? reqd;
  late int? bold;
  late int? inGlobalSearch;
  late int? collapsible;
  late int? unique;
  late int? noCopy;
  late int? allowOnSubmit;
  late int? showPreviewPopup;
  late int? permlevel;
  late int? ignoreUserPermissions;
  late int? columns;
  late int? inListView;
  late int? inStandardFilter;
  late int? isDefaultFilter;
  late int? inPreview;
  late int? readOnly;
  late int? length;
  late dynamic translatable;
  late int? rememberLastSelectedValue;
  late int? allowBulkEdit;
  late int? printHideIfNoValue;
  late int? inFilter;
  late int? fetchIfEmpty;
  late int? ignoreXssFilter;
  late int? hideBorder;
  late int? hideDays;
  late int? hideSeconds;
  late dynamic defaultValue;
  late int pVisible = 1;

  DoctypeField({
    this.doctype,
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.idx,
    this.docstatus,
    required this.fieldname,
    required this.label,
    this.dependsOn,
    this.mandatoryDependsOn,
    this.fetchFrom,
    this.fieldtype,
    this.oldfieldtype,
    this.options,
    this.searchIndex,
    this.hidden,
    this.setOnlyOnce,
    this.allowInQuickEntry,
    this.printHide,
    this.reportHide,
    this.reqd,
    this.bold,
    this.inGlobalSearch,
    this.collapsible,
    this.unique,
    this.noCopy,
    this.allowOnSubmit,
    this.showPreviewPopup,
    this.permlevel,
    this.ignoreUserPermissions,
    this.columns,
    this.inListView,
    this.inStandardFilter,
    this.isDefaultFilter = 0,
    this.inPreview,
    this.readOnly,
    this.length,
    this.translatable,
    this.rememberLastSelectedValue,
    this.allowBulkEdit,
    this.printHideIfNoValue,
    this.inFilter,
    this.fetchIfEmpty,
    this.ignoreXssFilter,
    this.hideBorder,
    this.hideDays,
    this.hideSeconds,
    this.defaultValue,
    this.pVisible = 1,
  });

  DoctypeField.fromJson(Map<dynamic, dynamic> json) {
    doctype = json['doctype'];
    name = json['name'];
    owner = json['owner'];
    creation = json['creation'];
    modified = json['modified'];
    modifiedBy = json['modified_by'];
    parent = json['parent'];
    parentfield = json['parentfield'];
    parenttype = json['parenttype'];
    idx = json['idx'];
    docstatus = json['docstatus'];
    fieldname = json['fieldname'];
    dependsOn = json['depends_on'];
    mandatoryDependsOn = json['mandatory_depends_on'];
    fetchFrom = json['fetch_from'];
    label = json['label'];
    fieldtype = json['fieldtype'];
    oldfieldtype = json['oldfieldtype'];
    options = json['options'];
    searchIndex = json['search_index'];
    hidden = json['hidden'];
    setOnlyOnce = json['set_only_once'];
    allowInQuickEntry = json['allow_in_quick_entry'];
    printHide = json['print_hide'];
    reportHide = json['report_hide'];
    reqd = json['reqd'];
    bold = json['bold'];
    inGlobalSearch = json['in_global_search'];
    collapsible = json['collapsible'];
    unique = json['unique'];
    noCopy = json['no_copy'];
    allowOnSubmit = json['allow_on_submit'];
    showPreviewPopup = json['show_preview_popup'];
    permlevel = json['permlevel'];
    ignoreUserPermissions = json['ignore_user_permissions'];
    columns = json['columns'];
    inListView = json['in_list_view'];
    inStandardFilter = json['in_standard_filter'];
    isDefaultFilter = json['is_default_filter'];
    inPreview = json['in_preview'];
    readOnly = json['read_only'];
    length = json['length'];
    translatable = json['translatable'];
    rememberLastSelectedValue = json['remember_last_selected_value'];
    allowBulkEdit = json['allow_bulk_edit'];
    printHideIfNoValue = json['print_hide_if_no_value'];
    inFilter = json['in_filter'];
    fetchIfEmpty = json['fetch_if_empty'];
    ignoreXssFilter = json['ignore_xss_filter'];
    hideBorder = json['hide_border'];
    hideDays = json['hide_days'];
    hideSeconds = json['hide_seconds'];
    defaultValue = json['default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doctype'] = doctype;
    data['name'] = name;
    data['owner'] = owner;
    data['creation'] = creation;
    data['modified'] = modified;
    data['modified_by'] = modifiedBy;
    data['parent'] = parent;
    data['parentfield'] = parentfield;
    data['parenttype'] = parenttype;
    data['idx'] = idx;
    data['docstatus'] = docstatus;
    data['fieldname'] = fieldname;
    data['depends_on'] = dependsOn;
    data['mandatory_depends_on'] = mandatoryDependsOn;
    data['fetch_from'] = fetchFrom;
    data['label'] = label;
    data['fieldtype'] = fieldtype;
    data['oldfieldtype'] = oldfieldtype;
    data['options'] = options;
    data['search_index'] = searchIndex;
    data['hidden'] = hidden;
    data['set_only_once'] = setOnlyOnce;
    data['allow_in_quick_entry'] = allowInQuickEntry;
    data['print_hide'] = printHide;
    data['report_hide'] = reportHide;
    data['reqd'] = reqd;
    data['bold'] = bold;
    data['in_global_search'] = inGlobalSearch;
    data['collapsible'] = collapsible;
    data['unique'] = unique;
    data['no_copy'] = noCopy;
    data['allow_on_submit'] = allowOnSubmit;
    data['show_preview_popup'] = showPreviewPopup;
    data['permlevel'] = permlevel;
    data['ignore_user_permissions'] = ignoreUserPermissions;
    data['columns'] = columns;
    data['in_list_view'] = inListView;
    data['in_standard_filter'] = inStandardFilter;
    data['is_default_filter'] = isDefaultFilter;
    data['in_preview'] = inPreview;
    data['read_only'] = readOnly;
    data['length'] = length;
    data['translatable'] = translatable;
    data['remember_last_selected_value'] = rememberLastSelectedValue;
    data['allow_bulk_edit'] = allowBulkEdit;
    data['print_hide_if_no_value'] = printHideIfNoValue;
    data['in_filter'] = inFilter;
    data['fetch_if_empty'] = fetchIfEmpty;
    data['ignore_xss_filter'] = ignoreXssFilter;
    data['hide_border'] = hideBorder;
    data['hide_days'] = hideDays;
    data['hide_seconds'] = hideSeconds;
    data['default'] = defaultValue;
    return data;
  }
}
