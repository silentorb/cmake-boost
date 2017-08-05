const fs = require('fs')

module.exports = function(helper) {
  const boost_exists = fs.existsSync('boost')
  if (!boost_exists)
    helper.shellCommand('git clone https://github.com/boostorg/boost.git')

  helper.shell.cd('boost')

  if (!boost_exists)
	helper.shellCommand('git checkout tags/boost-1.64.0 -b boost-1.64.0')

  helper.shellCommand('git submodule update --init tools/build libs/system libs/filesystem libs/regex libs/config libs/predef libs/assert libs/core libs/type_traits libs/iterator libs/mpl libs/preprocessor libs/static_assert libs/detail libs/smart_ptr libs/throw_exception libs/io libs/functional libs/range libs/integer ')

  if (helper.shell.ls('b2*').length == 0)
	helper.shellCommand('./bootstrap')
}