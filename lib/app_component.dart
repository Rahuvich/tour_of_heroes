import 'package:angular/angular.dart';

import 'src/hero_service.dart';
import 'src/hero_list_component.dart';
import 'src/routes.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  template: '''
    <h1>{{title}}</h1>
    <nav>
    <a [routerLink]="RoutePaths.dashboard.toUrl()"
       [routerLinkActive]="'active'">Dashboard</a>
    <a [routerLink]="RoutePaths.heroes.toUrl()"
       [routerLinkActive]="'active'">Heroes</a>
  </nav>
    <router-outlet [routes]="Routes.all"></router-outlet>
  ''',
  directives: [HeroListComponent,routerDirectives],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes]
)
class AppComponent {
  final title = 'Tour of Heroes';
}