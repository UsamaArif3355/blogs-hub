import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/model/contact_model.dart';
// import 'package:dorilla_games/views/desktop/view-model/service-keys/service_keys.dart';
import 'package:emailjs/emailjs.dart';

class EmailSender {
  final ContactModel contactModel;
  EmailSender({
    required this.contactModel,
  });
  //
  // Future<void> sendEmail() async {
  //   await EmailJS.send(
  //     ServiceKeys.serviceId,
  //     ServiceKeys.templateId,
  //     {
  //       'user_email': ProjectKeys.gmail,
  //       'name': contactModel.name,
  //       'subject': contactModel.extractSubject(contactModel),
  //       'message': contactModel.about,
  //       'email': contactModel.email,
  //     },
  //      Options(
  //       publicKey: ServiceKeys.publicKey,
  //       privateKey: ServiceKeys.privateKey,
  //     ),
  //   );
  // }
}
