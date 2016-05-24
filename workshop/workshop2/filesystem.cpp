#include <iostream>

#include <boost/filesystem.hpp>

using namespace boost::filesystem;
bool find_file( const path & dir_path,         // in this directory,

        const std::string & file_name, // search for this name,
        path & path_found )            // placing path here if found
{
    if ( !exists( dir_path ) ) return false;
    directory_iterator end_itr; // default construction yields past-the-end
    for ( directory_iterator itr( dir_path );
            itr != end_itr;
            ++itr )
    {
        if ( is_directory(itr->status()) )
        {
            if ( find_file( itr->path(), file_name, path_found ) ) return true;
        }
        else if ( itr->path() == path(file_name) ) // see below

        {
            path_found = itr->path();
            return true;
        }
    }
    return false;
}

int main () {
    path re;
    if(find_file( path("."), "in.txt", re)) {
        std::cout << re << std::endl;           
    } else {
        std::cout << "no found" << std::endl;
    }
}



