part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();
  @override
  List<Object> get props => [];
}

class MainShowLoadingState extends MainState {
  final String message;
  const MainShowLoadingState({required this.message});
  @override
  List<Object> get props => [message];
}

class MainInitial extends MainState {
  final bool doctorAvailable;
  const MainInitial({required this.doctorAvailable});
  @override
  List<Object> get props => [doctorAvailable];
}

class DoctorServiceState extends MainState {
  final bool doctorAvailable;
  final String message;
  const DoctorServiceState(
      {required this.doctorAvailable, required this.message});
  @override
  List<Object> get props => [doctorAvailable, message];
}

class DoctorServiceErrorState extends MainState {
  final bool doctorAvailable;
  final String message;
  const DoctorServiceErrorState(
      {required this.doctorAvailable, required this.message});
  @override
  List<Object> get props => [doctorAvailable, message];
}

class CancelButtonAmdState extends MainState {
  final bool doctorAvailable;
  const CancelButtonAmdState({required this.doctorAvailable});
  @override
  List<Object> get props => [doctorAvailable];
}

class HomeServiceSuccessState extends MainState {
  final HomeServiceModel homeServiceAssigned;
  const HomeServiceSuccessState({required this.homeServiceAssigned});
  @override
  List<Object> get props => [homeServiceAssigned];
}

class HomeServiceErrorState extends MainState {
  final String message;
  const HomeServiceErrorState({required this.message});
  @override
  List<Object> get props => [message];
}

class LocationStatesSuccessState extends MainState {
  final List<SelectModel> listStates;
  const LocationStatesSuccessState({required this.listStates});
  @override
  List<Object> get props => [listStates];
}

class LocationCitiesSuccessState extends MainState {
  final List<SelectModel> listCities;
  final String selectedState;
  const LocationCitiesSuccessState(
      {required this.listCities, required this.selectedState});
  @override
  List<Object> get props => [listCities, selectedState];
}

class ConfirmHomeServiceSuccessState extends MainState {
  final HomeServiceModel homeServiceConfirmed;
  const ConfirmHomeServiceSuccessState({required this.homeServiceConfirmed});
  @override
  List<Object> get props => [homeServiceConfirmed];
}

class DisallowHomeServiceSuccessState extends MainState {
  final String message;
  const DisallowHomeServiceSuccessState({required this.message});
  @override
  List<Object> get props => [message];
}

class CompleteHomeServiceSuccessState extends MainState {
  final String message;
  const CompleteHomeServiceSuccessState({required this.message});
  @override
  List<Object> get props => [message];
}

class HomeServiceInAttentionState extends MainState {
  final String message;
  const HomeServiceInAttentionState({required this.message});
  @override
  List<Object> get props => [message];
}

class ChangeLocationDoctorCityState extends MainState {
  final String selectedCity;
  const ChangeLocationDoctorCityState({required this.selectedCity});
  @override
  List<Object> get props => [selectedCity];
}

class HomeServiceEmptyState extends MainState {
  const HomeServiceEmptyState();
}

class LocationShowLoadingState extends MainState {
  final String message;
  const LocationShowLoadingState({required this.message});
  @override
  List<Object> get props => [message];
}

class LocationErrorState extends MainState {
  final String message;
  const LocationErrorState({required this.message});
  @override
  List<Object> get props => [message];
}

class ReasonRejectionSuccessState extends MainState {
  final HomeServiceModel homeServiceAssigned;
  final List<SelectModel> listReasonRejection;
  const ReasonRejectionSuccessState(
      {required this.homeServiceAssigned, required this.listReasonRejection});
  @override
  List<Object> get props => [homeServiceAssigned, listReasonRejection];
}

class ReasonCompleteSuccessState extends MainState {
  final HomeServiceModel homeServiceAssigned;
  final List<SelectModel> listReasonComplete;
  const ReasonCompleteSuccessState(
      {required this.homeServiceAssigned, required this.listReasonComplete});
  @override
  List<Object> get props => [homeServiceAssigned, listReasonComplete];
}

class ShowLoadingInAttentionState extends MainState {
  final String message;
  const ShowLoadingInAttentionState({required this.message});
  @override
  List<Object> get props => [message];
}

class ShowAmdOrderAdminFinalizedState extends MainState {
  final String message;
  const ShowAmdOrderAdminFinalizedState({required this.message});
  @override
  List<Object> get props => [message];
}

class AmdOrderAdminSuccessState extends MainState {
  final HomeServiceModel homeServiceAssigned;
  const AmdOrderAdminSuccessState({required this.homeServiceAssigned});
  @override
  List<Object> get props => [homeServiceAssigned];
}

class HomeServicePendingFinishState extends MainState {
  final String message;
  const HomeServicePendingFinishState({required this.message});
  @override
  List<Object> get props => [message];
}

class HomeServiceAssignedErrorState extends MainState {
  final String message;
  const HomeServiceAssignedErrorState({required this.message});
  @override
  List<Object> get props => [message];
}

class DoctorHomeServiceAssignedState extends MainState {
  final String message;
  const DoctorHomeServiceAssignedState({required this.message});
  @override
  List<Object> get props => [message];
}

class NotHomeServiceAssignedState extends MainState {
  const NotHomeServiceAssignedState();
  @override
  List<Object> get props => [];
}

class DoctorHomeServiceAttentionState extends MainState {
  final String message;
  const DoctorHomeServiceAttentionState({required this.message});
  @override
  List<Object> get props => [message];
}
