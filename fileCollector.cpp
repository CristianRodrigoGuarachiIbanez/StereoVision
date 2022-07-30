//
// Created by cristian on 18.11.21.
//

#include<zip.h>
#include <iostream>
#include <vector>
#include <dirent.h>
#include <unistd.h>
#include <limits.h>
#include <string>
#include <cstring>
using std::cout;
using std::endl;

struct dirent *dirread;
class GTG{
public:
    int err;
    zip *z;
    char*zipname;
    char*filename;
    std::string cwd;
    char *contents;
    zip_file * file;
    DIR *dir;
    std::vector<char*> localfiles;
    int is_open;

    GTG(){
        cwd = getCurrWorkDir();
        extractDirectoryFiles(cwd);
        fileManager();
        //this->err=0;
        //this-> z = zip_open(zipname. 0, &err);
    }
    ~GTG(){
        cout<<"Destructor"<<endl;
    }
    void extractDirectoryFiles(std::string directory){
        const char * direct = directory.c_str();
        if((dir=opendir(direct))!= nullptr){
            while((dirread =readdir(dir)) != nullptr){
                localfiles.push_back(dirread->d_name);
            }
            closedir(dir);
        }else{
            perror("opendir");
            cout<< "the directory could not be opened"<<endl;
        }
        //for(auto file: localfiles)cout<< file<< "/"<<endl;
        cout<< "the directory was saved successfully!"<<endl;
    }
    /*void convertToChar(std::string directory){
        int n = directory.length();
        char charArray[n+1];
        std::strcpy(charArray, directory.c_str());
        return charArray;
    }**/
    std::string getCurrWorkDir(){
        char buffer[PATH_MAX];
        if (getcwd(buffer, sizeof(buffer)) != NULL) {
            cout<<"Current working directory : %s\n" << buffer;
            return buffer;
        } else {
            perror("getcwd() error");
            return "[Error]: no Current Working Directory";
        }
    }
    void fileManager(){
        for(auto i =localfiles.begin(); i != localfiles.end(); ++i){
            std::cout<<*i<<endl;
            if(StartsWith( *i, ".cpp")){
                std::cout<< "this works"<<std::endl;
            }

            //openZIPFile(*i);
        }
    }

private:bool StartsWith(const char *a, const char *b)
    {
        if(strncmp(a, b, strlen(b)) == 0) return 1;
        return 0;
    }
//    void openZIPFile(const char*directory){
//       struct zip_stat st;
//       zip_stat_init(&st);
//       zip_stat(z,directory, 0, &st);
//       //allocates memory
//       contents = new char[st.size];
//       std::cout << "the zip file was successfully opened!"<<std::endl;
//   }
};


int main() {
    GTG f;
    f = GTG();
    return 0;
}