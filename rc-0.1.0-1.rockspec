package = "rc"
version = "0.1.0-1"
source = {
  url = "git+ssh://git@github.com/arzezak/rc.git",
  tag = "0.1.0",
}
description = {
  summary = "Simple key-value configurations manager.",
  detailed = [[
    A simple Lua module for managing key-value configurations.
    It allows reading and writing settings to and from files.
  ]],
  homepage = "https://github.com/arzezak/rc",
  license = "MIT/X11",
}
build = {
  type = "builtin",
  modules = {
    rc = "src/rc.lua",
  },
}
