import 'package:boolbi_app/const/images/app_asset_images.dart';

class OnBoardDataModel {
  String? imageUrl;

  String? description;

  OnBoardDataModel({this.imageUrl, this.description});
}

List onBoardList = [
  OnBoardDataModel(
      imageUrl: AssetsImagesPath.onBoard1,
      description:
          "Reliable and secure transactions for both clients and freelancers."),
  OnBoardDataModel(
      imageUrl: AssetsImagesPath.onBoard2,
      description:
          "The right talent can bring innovation boost productivity, and help achieve long-term goals. By connecting with the best candidates, you ensure that your team is equipped with the skills and expertise needed to thrive in a competitive market. "),
  OnBoardDataModel(
      imageUrl: AssetsImagesPath.onBoard3,
      description:
          "To create a strong and effective team, it's essential to attract top talent. Our platform offers you a seamless hiring experience, helping you identify, evaluate, and hire the best candidates quickly and efficiently. With the right tools and insights, you can make informed decisions and build a workforce that drives success. "),
];
