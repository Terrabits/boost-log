#include "boost-log/logging.hpp"
#include <boost/log/core.hpp>
#include <boost/log/expressions.hpp>
#include <boost/log/utility/setup/common_attributes.hpp>
#include <boost/log/utility/setup/file.hpp>


void init_logging() {
  // set log file, format
  boost::log::add_common_attributes();
  boost::log::add_file_log(
    boost::log::keywords::file_name = "main.log",
    boost::log::keywords::format    = "%TimeStamp% - %FUNCTION% - %FILE%(%LINE%) - %Severity% - %Message%"
  );

  // level filter
  boost::log::core::get()->set_filter(
    boost::log::trivial::severity >= boost::log::trivial::info
  );
}
