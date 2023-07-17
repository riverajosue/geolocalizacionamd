
import 'package:geolocalizacionamd/app/core/controllers/secure_storage_controller.dart';

import '../../api/constants/api_constants.dart';
import '../../api/services/consult_data_service.dart';
import '../../api/services/consult_data_service_implement.dart';
import '../../errors/error_app_exception.dart';
import '../../errors/error_general_exception.dart';

class AmdHistoryController {

  final SecureStorageController secureStorageController =
  SecureStorageController();

  final ConsultDataService consultDataService = ConsultDataServiceImp();


  Future<void> getHistoryAmdOrderListCtrl() async {

    try {
      final tokenUser =
      await secureStorageController.readSecureData(ApiConstants.tokenLabel);

      final idDocotorAmd =
      await secureStorageController.readSecureData(ApiConstants.idDoctorAmd);

      var model = await consultDataService.getHistoryAmdOrderList(tokenUser, int.parse(idDocotorAmd));


    } on ErrorAppException {
      rethrow;
    } on ErrorGeneralException {
      rethrow;
    } catch (unknowerror) {
      throw ErrorGeneralException();
    }

  }

}