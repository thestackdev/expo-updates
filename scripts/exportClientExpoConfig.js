const ExpoConfig = require('@expo/config');
const path = require('path');

const projectDir = path.join(__dirname, '..', '..', 'memli-mobile-app');

const { exp } = ExpoConfig.getConfig(projectDir, {
  skipSDKVersionRequirement: true,
  isPublicConfig: true,
});

console.log(JSON.stringify(exp));
