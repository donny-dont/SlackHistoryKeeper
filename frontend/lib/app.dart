library frontend.app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:slack_history_keeper_frontend/components/about/about.dart';
import 'package:slack_history_keeper_frontend/components/home/home.dart';

@Component(selector: 'app')
@View(
    template: '''
    <nav>
      <a [router-link]="['/home']">Home</a>
      <a [router-link]="['/about']">About</a>
    </nav>
    <router-outlet></router-outlet>
    ''',
    directives: const [ROUTER_DIRECTIVES, Home, About])
@RouteConfig(const [
    const Route(path: '/home', component: Home, as: 'home'),
    const Route(path: '/about', component: About, as: 'about')
])
class App {}