import 'package:et_child/global/countries_list.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  RxString selectedCountry = ''.obs;
  RxString selectedCountryCode = 'Algeria'.obs;
  RxString selectedCountrySignin = ''.obs;
  RxBool isChecked = false.obs;
  RxString mobileNo = ''.obs;
  RxString searchQuery = ''.obs;

  void changeSelectedCountry(String countryName) {
    selectedCountry.value = countryName;
  }

  void setSearchQuery(String query) {
    searchQuery.value = query;
  }

  List<Countries> get filteredCountries {
    if (searchQuery.value.isEmpty) {
      return allCountries;
    } else {
      return allCountries
          .where((country) =>
              country.name.toLowerCase().contains(searchQuery.value.toLowerCase()))
          .toList();
    }
  }
}
