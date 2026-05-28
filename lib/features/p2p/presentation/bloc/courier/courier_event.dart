part of 'courier_bloc.dart';

abstract class CourierEvent {
  const CourierEvent();
}

class CourierProfileRequested extends CourierEvent {
  const CourierProfileRequested();
}

class CourierApplicationSubmitted extends CourierEvent {
  final Map<String, dynamic> applicationData;
  const CourierApplicationSubmitted(this.applicationData);
}

class CourierAvailabilityToggled extends CourierEvent {
  final bool isActive;
  const CourierAvailabilityToggled({required this.isActive});
}
