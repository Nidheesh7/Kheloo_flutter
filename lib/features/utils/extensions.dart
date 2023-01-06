extension StringExtension on String {
  /// Append the image location to the string
  String asAssetImg() => 'assets/images/$this';

  /// Append the svg location to the string
  String asAssetSvg() => 'assets/svg/$this.svg';
}
