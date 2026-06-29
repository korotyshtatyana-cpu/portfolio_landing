class ModuleDetailsModel {
  final List<String>? presentationImages;
  final String? appFile;
  final String? image;

  const ModuleDetailsModel({this.appFile, this.presentationImages, this.image});

  const ModuleDetailsModel.presentation({
    required this.presentationImages,
    this.appFile,
    this.image,
  });

  const ModuleDetailsModel.appFile({
    this.presentationImages,
    required this.appFile,
    this.image,
  });

  const ModuleDetailsModel.image({
    this.presentationImages,
    this.appFile,
    required this.image,
  });
}
