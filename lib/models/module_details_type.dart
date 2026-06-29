class ModuleDetailsModel {
  final List<String>? presentationImages;
  final String? text;
  final String? image;

  const ModuleDetailsModel({this.text, this.presentationImages, this.image});

  const ModuleDetailsModel.presentation({
    required this.presentationImages,
    this.text,
    this.image,
  });

  const ModuleDetailsModel.text({
    this.presentationImages,
    required this.text,
    this.image,
  });

  const ModuleDetailsModel.image({
    this.presentationImages,
    this.text,
    required this.image,
  });
}
