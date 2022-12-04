import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog1/features/animations/bloc/animation_bloc.dart';

class AnimationRepository{
  Future<void> onFetchedAnimationEvent(FetchedAnimationEvent event, Emitter<AnimationState> emit) async {
    emit(LoadingAnimationState(
      
    ));
    try {
      emit(LoadedAnimationState());
    }  catch (_) {
      emit(FailureAnimationState());
    }
  }

}