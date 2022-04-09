import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';

class ProfileRepository {
  Future<User> getProfile() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return _stubUser;
  }
}

var _stubUser = User(
  id: 1,
  name: 'Мирон',
  lastName: 'Бункеров',
  birthDate: '',
  email: '',
  phone: '',
  photoUrl:
      'https://s3-alpha-sig.figma.com/img/2fb3/141e/57d3910fcca978d11b1ea71e2e0802b1?Expires=1649635200&Signature=DfxeMTwZbN4QYyaAC2bEEjbVXiqs7O3oM29TS0gGzsLFjxuj4PdcbRV3MP529u6D6y-wY2shBHymRL0xvKNs-N1wMJzrVcnFn0a3K-nX~pqyMzmsvmHw~Yl~ZZU2sKG6C~KG7zRyJWW0SRPW1TAKJdJSkS5WmhZrb192v0b4ypgu-uGqZDY9W5RjpKJgn1W53209SZImZJhTMvIQw1b7M7QD-C~FkqQhG9ND71h7BvNwBzwuHd5oGRDcT1UJlDFHN65-FZXrasuNlBU6XkH0h2o5Sae2hyPnuuqcUurqAOSRqOymd91KzgHrmXh2LfmGhsn3NvE8NM2-dYktbxXlKw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  favoritePlaces: List<Place>.generate(
    5,
    (index) => Place(
      id: index + 1,
      name: 'Название Кафе',
      description: 'Описание',
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/a8df/2b8e/8b3ec5c81b489cac54a930c453372cd7?Expires=1650240000&Signature=UhZ0ajau9-uqd~g8ymaBlpga0MyD7btxuIwGUGFkpPprFIX-0Xyah5jS3mm2uZax07KHrhokQ0xVWFVRDvTqcLBQaH-AiSJnw0m4kqErs2He3RKmjibvk6JoRwox2HfDXqkBke-s7f-pA77Rx8i3FGVtg3YfuDZ-DENXUKNmMtURYbtuTBxfK8nFH75f-N9saz2gXSe7cfkpbP4L5wHpGcv1jYLAKi6pMSkVLgAb-Kn8uOPUZ6SFL~TGNAuKl9Z4TW4Pn6ohQmCivLrUrF~oMpMdiZ3v6QIrkfjj7ce25WhwT3gh4ptYVACWjP0wL2fMy~x5moP6siR7TSRYtkNkbw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    ),
  ),
);
