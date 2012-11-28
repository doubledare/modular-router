Package.describe({
  summary: "Modular client router for Meteor"
});

Package.on_use(function (api, where) {
  api.use(['underscore'], 'client');
  api.use(['amplify'], 'client');
  api.add_files("lib/modular-router.js", 'client');
});

Package.on_test(function (api) {
  api.use('tinytest');
});