class NewClass {
  dynamic vendorScreenRedirectLink;
  dynamic vendorScreenGetOffersGeneralOffers;
  dynamic vendorScreenGetOffersGeneralLimit;
  dynamic vendorScreenGetOffersGeneralNo;

  NewClass(
      {this.vendorScreenRedirectLink,
        this.vendorScreenGetOffersGeneralOffers,
        this.vendorScreenGetOffersGeneralLimit,
        this.vendorScreenGetOffersGeneralNo});

  NewClass.fromJson(Map<String, dynamic> json) {
    vendorScreenRedirectLink = json['vendorScreen_redirectLink'];
    vendorScreenGetOffersGeneralOffers =
    json['vendorScreen_getOffers_general_offers'];
    vendorScreenGetOffersGeneralLimit =
    json['vendorScreen_getOffers_general_limit'];
    vendorScreenGetOffersGeneralNo = json['vendorScreen_getOffers_general_No'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['vendorScreen_redirectLink'] = vendorScreenRedirectLink;
    data['vendorScreen_getOffers_general_offers'] =
        vendorScreenGetOffersGeneralOffers;
    data['vendorScreen_getOffers_general_limit'] =
        vendorScreenGetOffersGeneralLimit;
    data['vendorScreen_getOffers_general_No'] =
        vendorScreenGetOffersGeneralNo;
    return data;
  }
}