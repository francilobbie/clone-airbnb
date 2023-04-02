const path = require('path');
const { webpackConfig, merge } = require('@rails/webpacker');

const customConfig = {
  resolve: {
    alias: {
      // Add any necessary aliases here, for example:
      // 'react': 'preact/compat',
      // 'react-dom/test-utils': 'preact/test-utils',
      // 'react-dom': 'preact/compat'
    }
  }
};

module.exports = merge(webpackConfig, customConfig);
