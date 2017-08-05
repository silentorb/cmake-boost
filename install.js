module.exports = function(helper) {
  helper.shellCommand('git clone https://github.com/boostorg/boost.git'
  helper.shell.cd('boost')
  helper.shellCommand('git checkout tags/boost-1.64.0')
  helper.shellCommand('git submodule init system filesystem regex')
  helper.shellCommand('git submodule update')
}