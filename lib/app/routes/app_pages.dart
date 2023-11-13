import 'package:get/get.dart';

import 'package:tic/app/modules/about/bindings/about_binding.dart';
import 'package:tic/app/modules/about/views/about_view.dart';
import 'package:tic/app/modules/agen/bindings/agen_binding.dart';
import 'package:tic/app/modules/agen/views/agen_view.dart';
import 'package:tic/app/modules/akomodasi/bindings/akomodasi_binding.dart';
import 'package:tic/app/modules/akomodasi/views/akomodasi_view.dart';
import 'package:tic/app/modules/bottombar/bindings/bottombar_binding.dart';
import 'package:tic/app/modules/bottombar/views/bottombar_view.dart';
import 'package:tic/app/modules/detailagen/bindings/detailagen_binding.dart';
import 'package:tic/app/modules/detailagen/views/detailagen_view.dart';
import 'package:tic/app/modules/detailakomodasi/bindings/detailakomodasi_binding.dart';
import 'package:tic/app/modules/detailakomodasi/views/detailakomodasi_view.dart';
import 'package:tic/app/modules/detailevent/bindings/detailevent_binding.dart';
import 'package:tic/app/modules/detailevent/views/detailevent_view.dart';
import 'package:tic/app/modules/detailgallery/bindings/detailgallery_binding.dart';
import 'package:tic/app/modules/detailgallery/views/detailgallery_view.dart';
import 'package:tic/app/modules/detailmoneychanger/bindings/detailmoneychanger_binding.dart';
import 'package:tic/app/modules/detailmoneychanger/views/detailmoneychanger_view.dart';
import 'package:tic/app/modules/detailnews/bindings/detailnews_binding.dart';
import 'package:tic/app/modules/detailnews/views/detailnews_view.dart';
import 'package:tic/app/modules/detailpasar/bindings/detailpasar_binding.dart';
import 'package:tic/app/modules/detailpasar/views/detailpasar_view.dart';
import 'package:tic/app/modules/detailrental/bindings/detailrental_binding.dart';
import 'package:tic/app/modules/detailrental/views/detailrental_view.dart';
import 'package:tic/app/modules/detailresto/bindings/detailresto_binding.dart';
import 'package:tic/app/modules/detailresto/views/detailresto_view.dart';
import 'package:tic/app/modules/detailrs/bindings/detailrs_binding.dart';
import 'package:tic/app/modules/detailrs/views/detailrs_view.dart';
import 'package:tic/app/modules/detailtour/bindings/detailtour_binding.dart';
import 'package:tic/app/modules/detailtour/views/detailtour_view.dart';
import 'package:tic/app/modules/detailtransportasi/bindings/detailtransportasi_binding.dart';
import 'package:tic/app/modules/detailtransportasi/views/detailtransportasi_view.dart';
import 'package:tic/app/modules/event/bindings/event_binding.dart';
import 'package:tic/app/modules/event/views/event_view.dart';
import 'package:tic/app/modules/gallery/bindings/gallery_binding.dart';
import 'package:tic/app/modules/gallery/views/gallery_view.dart';
import 'package:tic/app/modules/home/bindings/home_binding.dart';
import 'package:tic/app/modules/home/views/home_view.dart';
import 'package:tic/app/modules/maps/bindings/maps_binding.dart';
import 'package:tic/app/modules/maps/views/maps_view.dart';
import 'package:tic/app/modules/market/bindings/market_binding.dart';
import 'package:tic/app/modules/market/views/market_view.dart';
import 'package:tic/app/modules/moneychanger/bindings/moneychanger_binding.dart';
import 'package:tic/app/modules/moneychanger/views/moneychanger_view.dart';
import 'package:tic/app/modules/news/bindings/news_binding.dart';
import 'package:tic/app/modules/news/views/news_view.dart';
import 'package:tic/app/modules/rental/bindings/rental_binding.dart';
import 'package:tic/app/modules/rental/views/rental_view.dart';
import 'package:tic/app/modules/resto/bindings/resto_binding.dart';
import 'package:tic/app/modules/resto/views/resto_view.dart';
import 'package:tic/app/modules/rs/bindings/rs_binding.dart';
import 'package:tic/app/modules/rs/views/rs_view.dart';
import 'package:tic/app/modules/splash/bindings/splash_binding.dart';
import 'package:tic/app/modules/splash/views/splash_view.dart';
import 'package:tic/app/modules/tour/bindings/tour_binding.dart';
import 'package:tic/app/modules/tour/views/tour_view.dart';
import 'package:tic/app/modules/translations/bindings/translations_binding.dart';
import 'package:tic/app/modules/translations/views/translations_view.dart';
import 'package:tic/app/modules/transportasi/bindings/transportasi_binding.dart';
import 'package:tic/app/modules/transportasi/views/transportasi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.TOUR,
      page: () => TourView(),
      binding: TourBinding(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.MAPS,
      page: () => MapsView(),
      binding: MapsBinding(),
    ),
    GetPage(
      name: _Paths.AKOMODASI,
      page: () => AkomodasiView(),
      binding: AkomodasiBinding(),
    ),
    GetPage(
      name: _Paths.RS,
      page: () => RsView(),
      binding: RsBinding(),
    ),
    GetPage(
      name: _Paths.MONEYCHANGER,
      page: () => MoneychangerView(),
      binding: MoneychangerBinding(),
    ),
    GetPage(
      name: _Paths.RENTAL,
      page: () => RentalView(),
      binding: RentalBinding(),
    ),
    GetPage(
      name: _Paths.AGEN,
      page: () => AgenView(),
      binding: AgenBinding(),
    ),
    GetPage(
      name: _Paths.RESTO,
      page: () => RestoView(),
      binding: RestoBinding(),
    ),
    GetPage(
      name: _Paths.MARKET,
      page: () => MarketView(),
      binding: MarketBinding(),
    ),
    GetPage(
      name: _Paths.TRANSPORTASI,
      page: () => TransportasiView(),
      binding: TransportasiBinding(),
    ),
    GetPage(
      name: _Paths.DETAILNEWS,
      page: () => DetailnewsView(),
      binding: DetailnewsBinding(),
    ),
    GetPage(
      name: _Paths.DETAILEVENT,
      page: () => DetaileventView(),
      binding: DetaileventBinding(),
    ),
    GetPage(
      name: _Paths.DETAILTOUR,
      page: () => DetailtourView(),
      binding: DetailtourBinding(),
    ),
    GetPage(
      name: _Paths.DETAILAKOMODASI,
      page: () => DetailakomodasiView(),
      binding: DetailakomodasiBinding(),
    ),
    GetPage(
      name: _Paths.DETAILRS,
      page: () => DetailrsView(),
      binding: DetailrsBinding(),
    ),
    GetPage(
      name: _Paths.DETAILMONEYCHANGER,
      page: () => DetailmoneychangerView(),
      binding: DetailmoneychangerBinding(),
    ),
    GetPage(
      name: _Paths.DETAILTRANSPORTASI,
      page: () => DetailtransportasiView(),
      binding: DetailtransportasiBinding(),
    ),
    GetPage(
      name: _Paths.DETAILRENTAL,
      page: () => DetailrentalView(),
      binding: DetailrentalBinding(),
    ),
    GetPage(
      name: _Paths.DETAILPASAR,
      page: () => DetailpasarView(),
      binding: DetailpasarBinding(),
    ),
    GetPage(
      name: _Paths.DETAILRESTO,
      page: () => DetailrestoView(),
      binding: DetailrestoBinding(),
    ),
    GetPage(
      name: _Paths.DETAILAGEN,
      page: () => DetailagenView(),
      binding: DetailagenBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.GALLERY,
      page: () => GalleryView(),
      binding: GalleryBinding(),
    ),
    GetPage(
      name: _Paths.DETAILGALLERY,
      page: () => DetailgalleryView(),
      binding: DetailgalleryBinding(),
    ),
    GetPage(
      name: _Paths.TRANSLATIONS,
      page: () => TranslationsView(),
      binding: TranslationsBinding(),
    ),
  ];
}
