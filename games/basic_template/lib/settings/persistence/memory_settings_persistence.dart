import 'settings_persistence.dart';

// An in-memory implementation of SettingsPersistence
// Useful for testing
class MemoryOnlySettingsPersistence implements SettingsPersistence {
  bool musicOn = true;

  bool soundsOn = true;

  bool audioOn = true;

  String playerName = 'Player';

  @override
  Future<bool> getAudioOn({required bool defaultValue}) async {
    return audioOn;
  }

  @override
  Future<bool> getMusicOn({required bool defaultValue}) async {
    return musicOn;
  }

  @override
  Future<String> getPlayerName() async {
    return playerName;
  }

  @override
  Future<bool> getSoundsOn({required bool defaultValue}) async {
    return soundsOn;
  }

  @override
  Future<void> saveAudioOn(bool value) async {
    audioOn = value;
  }

  @override
  Future<void> saveMusicOn(bool value) async {
    musicOn = value;
  }

  @override
  Future<void> savePlayerName(String value) async {
    playerName = value;
  }

  @override
  Future<void> saveSoundsOn(bool value) async {
    soundsOn = value;
  }
}
