#include "boost-log/init-logging.hpp"
#include "boost-log/log.hpp"
#include <boost/log/trivial.hpp>


int main(int argc, char *argv[]) {
  init_logging(boost::log::trivial::trace);
  LOG(trace)   << "this is trace";
  LOG(debug)   << "this is debug";
  LOG(info)    << "this is info";
  LOG(warning) << "this is warning";
  LOG(error)   << "this is error";
  LOG(fatal)   << "this is fatal";
  return 0;
}
