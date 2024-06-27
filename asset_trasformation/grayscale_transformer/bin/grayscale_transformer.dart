import 'dart:io';

import 'package:args/args.dart';
import 'package:image/image.dart';

const inputOptionName = 'input';
const outputOptionName = 'output';

int main(List<String> arguments) {
  // The flutter tool will invoke this program with two arguments, one for '--input'
  // and one for '--output'.
  // `--input` is the original asset file that the program should transform.
  // `--output` is where flutter expects the transformation output to be written to.
  final parser = ArgParser()
    ..addOption(inputOptionName, mandatory: true, abbr: 'i')
    ..addOption(outputOptionName, mandatory: true, abbr: 'o');

  ArgResults argResults = parser.parse(arguments);
  final String inputFilePath = argResults[inputOptionName];
  final String outputFilePath = argResults[outputOptionName];

  try {
    final Image image = decodeImage(File(inputFilePath).readAsBytesSync())!;
    final Image imageInGrayScale = grayscale(image);
    File(outputFilePath).writeAsBytesSync(encodePng(imageInGrayScale));

    return 0;
  } catch (e) {
    // The flutter cli tool will see a non-zero exit code (1 in this case) and fail the build
    // Anything written to stderr by asset transformer will be surfaced by flutter
    stderr.writeln(
        'Unexpected exception when producing grayscale image.\n' 'Details: $e');
    return 1;
  }
}
