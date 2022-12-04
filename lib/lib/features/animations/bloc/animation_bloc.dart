import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../resources/animation_repository.dart';

part 'animation_event.dart';
part 'animation_state.dart';

class AnimationBloc extends Bloc<AnimationEvent, AnimationState> {
  final _repository = AnimationRepository();
  AnimationBloc() : super(AnimationInitial()) {
    on<FetchedAnimationEvent>(_repository.onFetchedAnimationEvent) ;
    

  }
}
