import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';

part 'profile_vm.g.dart';

class ProfileVm = _ProfileVm with _$ProfileVm;

abstract class _ProfileVm extends ViewModel with Store {
  _ProfileVm({required ErrorHandler errorHandler}) : super(errorHandler);

  @action
  void onAvatar() {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onEditUserDetails() {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onSettings() {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onFavoritePlace(int id) {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onProfileSignOut() {
    // TODO(any): обработать нажатие на кнопку
  }

  User fakeUser() {
    return User(
      id: 1,
      name: 'Мирон',
      lastName: 'Бункеров',
      birthDate: '',
      email: '',
      phone: '',
      photoUrl:
          'https://s3-alpha-sig.figma.com/img/2fb3/141e/57d3910fcca978d11b1ea71e2e0802b1?Expires=1649635200&Signature=DfxeMTwZbN4QYyaAC2bEEjbVXiqs7O3oM29TS0gGzsLFjxuj4PdcbRV3MP529u6D6y-wY2shBHymRL0xvKNs-N1wMJzrVcnFn0a3K-nX~pqyMzmsvmHw~Yl~ZZU2sKG6C~KG7zRyJWW0SRPW1TAKJdJSkS5WmhZrb192v0b4ypgu-uGqZDY9W5RjpKJgn1W53209SZImZJhTMvIQw1b7M7QD-C~FkqQhG9ND71h7BvNwBzwuHd5oGRDcT1UJlDFHN65-FZXrasuNlBU6XkH0h2o5Sae2hyPnuuqcUurqAOSRqOymd91KzgHrmXh2LfmGhsn3NvE8NM2-dYktbxXlKw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      favoritePlaces: [
        const Place(
          id: 1,
          name: 'Название Кафе',
          description: 'Описание',
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/a8df/2b8e/8b3ec5c81b489cac54a930c453372cd7?Expires=1649030400&Signature=PxOaWu4ATdslRahsxRJ7Ob5jvfRRxS0ZP7cS-sL1KidOS71JqmFAqb6ZOIbeTgntMmxrAqpQMAWolA95osIf0BEYgmAkEtLZC8wUgAQ2GFIPes~sy3dKPlTmssnkUhIYL2qM649gL4ZH8oijm6XoDW7~eX4bP3lOIT7ztagkM7MR3CUlFQTVRluCJ7g0zVirXH~bE0tgsPZ4iXXgxIh~A6eabPo6AVINri4odrCr5dHoa47PFAuEk0HpE6Z-nPrUvDJe3fZtDB3SdrD1DjLK-O~9MGCMoKIpV~vH9-mu~i6pYD10rp7SkEU3uZESNTpS5kU1UDLhxfWF5ncPIfLtSg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        ),
        const Place(
          id: 2,
          name: 'Название Кафе',
          description: 'Описание',
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/a8df/2b8e/8b3ec5c81b489cac54a930c453372cd7?Expires=1649030400&Signature=PxOaWu4ATdslRahsxRJ7Ob5jvfRRxS0ZP7cS-sL1KidOS71JqmFAqb6ZOIbeTgntMmxrAqpQMAWolA95osIf0BEYgmAkEtLZC8wUgAQ2GFIPes~sy3dKPlTmssnkUhIYL2qM649gL4ZH8oijm6XoDW7~eX4bP3lOIT7ztagkM7MR3CUlFQTVRluCJ7g0zVirXH~bE0tgsPZ4iXXgxIh~A6eabPo6AVINri4odrCr5dHoa47PFAuEk0HpE6Z-nPrUvDJe3fZtDB3SdrD1DjLK-O~9MGCMoKIpV~vH9-mu~i6pYD10rp7SkEU3uZESNTpS5kU1UDLhxfWF5ncPIfLtSg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
        ),
      ],
    );
  }
}
