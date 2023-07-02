abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutPuts {
  // Abs.. Fun Will be overrided on Each ViewModel..
}

abstract class BaseViewModelInputs {
  // Start BaseViewModel..
  void start(int id);

  //Dispose To End BaseViewModel..
  void dispose();
}

mixin class BaseViewModelOutPuts {
  // Implementation ..
}
