import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';

import 'hero.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-dashboard',
  styleUrls: ['dashboard_component.css'],
  templateUrl: 'dashboard_component.html',
  directives: [coreDirectives,routerDirectives]
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  @override
  void ngOnInit() async {
    heroes = (await _heroService.getAll()).skip(1).take(4).toList();
  }

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});
}