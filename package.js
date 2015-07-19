Package.describe({
  name: 'mattimo:emoticons',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: 'Helpers for image based emoticons in your application. You can easily add your own icons.',
  // URL to the Git repository containing the source code for this package.
  git: 'https://github.com/dubvfan87/meteor-emoticons',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.0');

  api.use([
    'templating',
    'coffeescript',
    'underscore',
    'ogourment:settings@0.1.4'
  ], 'client');

  api.addFiles('meteor-emoticons.coffee');

  // Static Assets for client

  api.addFiles([
    'assets/images/emoticons/caritas_03.png',
    'assets/images/emoticons/caritas_05.png',
    'assets/images/emoticons/caritas_07.png',
    'assets/images/emoticons/caritas_09.png',
    'assets/images/emoticons/caritas_15.png',
    'assets/images/emoticons/caritas_16.png',
    'assets/images/emoticons/caritas_17.png',
    'assets/images/emoticons/caritas_18.png',
    'assets/images/emoticons/caritas_23.png',
    'assets/images/emoticons/caritas_24.png',
    'assets/images/emoticons/caritas_25.png',
    'assets/images/emoticons/caritas_26.png',
    'assets/images/emoticons/caritas_31.png',
    'assets/images/emoticons/caritas_32.png',
    'assets/images/emoticons/caritas_33.png',
    'assets/images/emoticons/caritas_34.png',
    'assets/images/emoticons/caritas_39.png',
    'assets/images/emoticons/caritas_40.png',
    'assets/images/emoticons/caritas_41.png',
    'assets/images/emoticons/caritas_42.png',
    'assets/images/emoticons/caritas_47.png',
    'assets/images/emoticons/caritas_48.png',
    'assets/images/emoticons/caritas_49.png',
    'assets/images/emoticons/caritas_50.png',
    'assets/images/emoticons/caritas_55.png',
    'assets/images/emoticons/caritas_56.png',
    'assets/images/emoticons/caritas_57.png',
    'assets/images/emoticons/caritas_58.png'
  ], 'client', {isAsset:true});

});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('mattimo:emoticons');
  api.addFiles('meteor-emoticons-tests.js');
});
