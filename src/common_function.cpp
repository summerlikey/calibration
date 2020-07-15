#include "common_cunction.h"

/////////////////////////////////////////////////////////
/** \brief is the dirpath exist
  * \param path the dir path
  */
bool existsDir(const std::string& path) {
    return boost::filesystem::is_directory(path);
}
/////////////////////////////////////////////////////////
/** \brief is the dirpath exist,if not exist create
  * \param path the dir path
  */
void createDirIfNotExists(const std::string& path) {
    if (!existsDir(path)) {
        boost::filesystem::create_directory(path);
    }
}