<<<<<<< HEAD
const path = require("path");
const webpack = require("webpack");
=======
const path = require('path');
>>>>>>> a9620b218a544c3db753a2e68fc7ce4e7fe18a4c

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
<<<<<<< HEAD
  module: {
    rules: [
      {
        test: /\.scss$/,
        use: [
          { loader: "style-loader" },
          { loader: "css-loader" },
          { loader: "sass-loader" },
        ]
      }
    ]
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
=======

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
>>>>>>> a9620b218a544c3db753a2e68fc7ce4e7fe18a4c
};
