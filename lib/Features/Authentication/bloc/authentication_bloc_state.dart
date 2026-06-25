enum AuthTab { login, signup }

class Authtabstate {
  final AuthTab selectedtab;

  const Authtabstate({this.selectedtab = AuthTab.login});

  Authtabstate copyWith({AuthTab? selectedtab}) {
    return Authtabstate(selectedtab: selectedtab ?? this.selectedtab);
  }
}
