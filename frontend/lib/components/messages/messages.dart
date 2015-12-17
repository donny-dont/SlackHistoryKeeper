library frontend.components.messages;

import 'package:angular2/angular2.dart';
import 'package:slack_history_keeper_frontend/components/message/message.dart';
import 'package:slack_history_keeper_shared/models.dart' as models;

@Component(selector: 'messages')
@View(templateUrl: 'messages.html', directives: const [NgFor, NgIf, Message])
class Messages {
  @Input()
  List<models.Message> messages;

  Messages();
}