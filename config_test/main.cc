#include "TEnv.h"
#include "TString.h"
#include <iostream>
using namespace std;

void ConfigFileReader(TString fileName){

TEnv *env = new TEnv(fileName);

cout << env->GetValue("test",0) << endl;
delete env;
}


int main(int argc, char* argv[]){
TString fileName = argv[1];
ConfigFileReader(fileName);

return 0;
}

