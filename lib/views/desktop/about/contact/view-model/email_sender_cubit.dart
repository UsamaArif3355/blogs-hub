import 'package:dorilla_games/views/desktop/about/contact/service/email_sender.dart';
import 'package:dorilla_games/views/desktop/about/contact/view-model/email_sender_state.dart';
import 'package:dorilla_games/views/desktop/model/contact_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailSenderCubit extends Cubit<IEmailSenderState> {
  EmailSenderCubit() : super(EmailSenderInitialState());

  void sendEmail(ContactModel model) async {
    try {
      emit(EmailSenderLoadingState());
      // await EmailSender(contactModel: model).sendEmail();
      emit(EmailSenderCompletedState());
    } catch (e) {
      emit(EmailSenderErrorState());
    }
  }
}
