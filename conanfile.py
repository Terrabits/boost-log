from conans import CMake, ConanFile


class BoostLog(ConanFile):
    name       = 'BoostLog'
    version    = '1.0.0'
    settings   = 'os', 'compiler', 'build_type', 'arch'
    requires   = 'boost/1.80.0'
    generators = 'cmake'

    def configure(self):
        self.options['boost'].without_context         = True
        self.options['boost'].without_contract        = True
        self.options['boost'].without_coroutine       = True
        self.options['boost'].without_fiber           = True
        self.options['boost'].without_graph           = True
        self.options['boost'].without_graph_parallel  = True
        self.options['boost'].without_iostreams       = True
        self.options['boost'].without_json            = True
        self.options['boost'].without_locale          = True
        self.options['boost'].without_math            = True
        self.options['boost'].without_mpi             = True
        self.options['boost'].without_nowide          = True
        self.options['boost'].without_program_options = True
        self.options['boost'].without_python          = True
        self.options['boost'].without_serialization   = True
        self.options['boost'].without_stacktrace      = True
        self.options['boost'].without_test            = True
        self.options['boost'].without_timer           = True
        self.options['boost'].without_type_erasure    = True
        self.options['boost'].without_wave            = True

    def build(self):
      cmake = CMake(self)
      cmake.configure()
      cmake.build()

    def imports(self):
        self.copy('*.dll',   'bin', 'bin')
        self.copy('*.dylib', 'bin', 'lib')
        self.copy('*.so',    'bin', 'lib')
