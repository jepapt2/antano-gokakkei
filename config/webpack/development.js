process.env.NODE_ENV = process.env.NODE_ENV || 'development'
const { CleanWebpackPlugin } = require('clean-webpack-plugin')
const environment = require('./environment')

// module.exports = environment.toWebpackConfig(), {
//   resolve: {
//     alias: {
//       'vue$': 'vue/dist/vue.js'
//     }
//   }
// }
environment.plugins.append(
    "CleanWebpackPlugin",
    new CleanWebpackPlugin({
        verbose: true,
    })
)


module.exports = Object.assign({}, environment.toWebpackConfig(), {
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    }
  }
});
