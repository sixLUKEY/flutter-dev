const Set<Song> songs = {
  // Filenames with whitespace break package:audioplayers on iOS
  // (as of February 2022), so we use no whitespace.
  Song('Mr_Smith-Azul.mp3', 'Azul', artist: 'Mr Smith'),
  Song('Mr_Smith-Sonorus.mp3', 'Sonorus', artist: 'Mr Smith'),
  Song('Mr_Smith-Sunday_Solitude.mp3', 'SundaySolitude', artist: 'Mr Smith'),
};

class Song {
  final String fileName;
  final String name;
  final String? artist;
  const Song(this.fileName, this.name, {this.artist});

  @override
  String toString() => 'Song<$fileName>';
}
