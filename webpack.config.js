const path = require('path');

module.exports = {
  // Set the mode to 'production' or 'development' based on your environment
  mode: 'production',

  // Set the entry point(s) for your application
  entry: {
    application: './app/javascript/application.js'
  },

  // Set the output directory and filename for compiled assets
  output: {
    path: path.resolve(__dirname, 'public', 'packs'),
    filename: '[name]-[contenthash].js'
  },

  // Set the Node.js environment options for webpack
  // Include polyfills or mocks for various node stuff
  node: {
    global: true,
    __dirname: false,
    __filename: false,
    // Add any other Node.js global objects you need here
  },

  // Add any plugins or loaders you need for your application
  plugins: [
    // Example plugin
  ],
  module: {
    // Example loader
  }
};
