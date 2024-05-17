String? textEmptyValidator(String? value, {String? message}) {
  if (value == null || value.isEmpty) {
    return message ?? "Campo obrigatório";
  }
  return null;
}
