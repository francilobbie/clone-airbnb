const path = require("path");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
  mode: "development",
  devtool: "source-map",
  entry: {
    application: "./app/javascript/application.js",
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "my_unique_tailwind_custom.css",
    }),
  ],
  module: {
    rules: [
      {
        test: /\.css$/,
        use: [MiniCssExtractPlugin.loader, "css-loader", "postcss-loader"],
      },
    ],
  },
  resolve: {
    alias: {
      stylesheets: path.resolve(__dirname, "app/assets/stylesheets/"),
      javascript: path.resolve(__dirname, "app/javascript/"),
      images: path.resolve(__dirname, "app/assets/images/"),
    },
  },
};
