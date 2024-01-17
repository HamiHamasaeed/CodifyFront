class Shop {
  final String password;
  final String email;
  final DateTime closeFrom;
  final DateTime closeTill;
  final int service;
  final double tax;
  final double longitude;
  final double latitude;
  final String image;
  final bool isBusy;
  final int preOrderDay;
  Shop(
      this.password,
      this.email,
      this.closeFrom,
      this.closeTill,
      this.service,
      this.tax,
      this.longitude,
      this.latitude,
      this.image,
      this.isBusy,
      this.preOrderDay);
}
