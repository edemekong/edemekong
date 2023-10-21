import 'package:edemekong/data/models/experience.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final experienceStateProvider = StateNotifierProvider<ExperienceState, List<Experience>>((ref) {
  return ExperienceState(ref);
});

class ExperienceState extends StateNotifier<List<Experience>> {
  final Ref ref;

  ExperienceState(this.ref) : super([]);
}
