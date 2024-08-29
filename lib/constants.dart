enum Screen {
  initial,
  welcome,
  login,
  register,
  home,
  settings,
  editSettings
}

Map<Screen, String> screenRoutes = {
  Screen.initial: '/',
  Screen.welcome: 'welcome',
  Screen.login: 'login',
  Screen.register: 'register',
  Screen.home: 'home',
  Screen.settings: 'settings',
  Screen.editSettings: 'edit-settings',
};

