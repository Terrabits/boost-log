from conans import ConanFile, CMake


class BoostLog(ConanFile):
   settings = "os", "compiler", "build_type", "arch"
   requires = "boost/1.80.0"
   generators = "cmake"

   def imports(self):
      self.copy("*.dll",    dst="bin", src="bin") # From bin to bin
      self.copy("*.dylib*", dst="bin", src="lib") # From lib to bin
      self.copy("*.so*",    dst="bin", src="lib")

   def build(self):
      cmake = CMake(self)
      cmake.configure()
      cmake.build()
