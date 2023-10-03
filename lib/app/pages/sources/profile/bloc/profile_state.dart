part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class ProfileInitial extends ProfileState {
  @override
  List<Object> get props => [];
}


class ProfileSuccessState extends ProfileState {

  final ProfileModel profileModel;

 const ProfileSuccessState({required this.profileModel});
  @override
  List<Object> get props => [profileModel];
}

class ProfileUpdateSuccessState extends ProfileState {

  @override
  List<Object?> get props => [];

}

class ProfileLoadingState extends ProfileState {
  @override

  List<Object?> get props => [];

}

class ProfileUpdateLoadingState extends ProfileState {
  @override
  List<Object?> get props => [];

}

class ProfileErrorState extends ProfileState {

 final String messageError;

  const ProfileErrorState({required this.messageError});
  @override
  List<Object?> get props => [messageError];

}

class ProfileInvalidSessionState extends ProfileState {
  final String message;
  const ProfileInvalidSessionState({required this.message});
  @override
  List<Object> get props => [message];
}
