part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {}

class ChangeLanguageEvent extends LanguageEvent {
 final Locale locale;

 ChangeLanguageEvent(this.locale);
}
