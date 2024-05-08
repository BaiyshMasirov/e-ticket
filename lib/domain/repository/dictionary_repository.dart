import 'package:dartz/dartz.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';

class DictionaryRepository with NetworkRemoteRepositoryMixin {
  final DictionaryRemoteSource _dictionaryRemoteSource;

  DictionaryRepository({
    required DictionaryRemoteSource dictionaryRemoteSource,
  }) : _dictionaryRemoteSource = dictionaryRemoteSource;

  Future<Either<RequestFailure, List<KeyValueMapDto>>> getEventTypes() async {
    final response = await handleRemoteRequest(
      request: () => _dictionaryRemoteSource.getEventTypes(),
    );

    return response;
  }

  Future<Either<RequestFailure, List<KeyValueMapDto>>>
      getEventStatuses() async {
    final response = await handleRemoteRequest(
      request: () => _dictionaryRemoteSource.getEventStatuses(),
    );

    return response;
  }

  Future<Either<RequestFailure, List<KeyValueMapDto>>> getTicketTypes() async {
    final response = await handleRemoteRequest(
      request: () => _dictionaryRemoteSource.getTicketTypes(),
    );

    return response;
  }

  Future<Either<RequestFailure, List<KeyValueMapDto>>>
      getTicketStatuses() async {
    final response = await handleRemoteRequest(
      request: () => _dictionaryRemoteSource.getTicketStatuses(),
    );

    return response;
  }

  Future<Either<RequestFailure, List<KeyValueMapDto>>>
      getLocationTypes() async {
    final response = await handleRemoteRequest(
      request: () => _dictionaryRemoteSource.getLocationTypes(),
    );

    return response;
  }
}
