#include "boost-log/logging.hpp"


int main(int argc, char *argv[]) {
  init_logging();
  LOG(trace)   << "this is trace";
  LOG(debug)   << "this is debug";
  LOG(info)    << "this is info";
  LOG(warning) << "this is warning";
  LOG(error)   << "this is error";
  LOG(fatal)   << "this is fatal";
  return 0;
}
