const defaultTheme = require('tailwindcss/defaultTheme')

// module.exports = {
//   content: [
//     './public/*.html',
//     './app/helpers/**/*.rb',
//     './app/javascript/**/*.js',
//     './app/views/**/*.{erb,haml,html,slim}'
//   ],
//   theme: {
//     extend: {
//       fontFamily: {
//         sans: ['Inter var', ...defaultTheme.fontFamily.sans],
//       },
//     },
//   },
//   plugins: [
//     require('@tailwindcss/forms'),
//     require('@tailwindcss/aspect-ratio'),
//     require('@tailwindcss/typography'),
//     require('@tailwindcss/container-queries'),
//   ]
// }

module.exports = {
  mode: 'jit',
  purge: [
    './app/**/*.html.erb',
    './app/**/*.html.haml',
    './app/**/*.html.slim',
    './app/**/*.js',
    './app/**/*.jsx',
    './app/**/*.ts',
    './app/**/*.tsx',
    './app/**/*.scss',
  ],
  darkMode: false,
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
};
