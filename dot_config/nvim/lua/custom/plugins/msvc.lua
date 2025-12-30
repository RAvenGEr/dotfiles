return {
  'hattya/vcvars.vim',
  event = 'VeryLazy',
  config = function()
    vim.cmd [[
            let vcvars_dict = vcvars#get(vcvars#list()[-1])
            let $PATH = join(vcvars_dict.path, ';') .';'. $PATH
            let $INCLUDE = join(vcvars_dict.include, ';') .';'. $INCLUDE
            let $LIB = join(vcvars_dict.lib, ';') .';'. $LIB
            let $LIBPATH = join(vcvars_dict.libpath, ';') .';'. $LIBPATH
            ]]
  end,
}
