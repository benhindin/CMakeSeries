#include "ImageProcessing.h"
#include "operations.h"
#include "log.h"
#include <iostream>
using namespace std;

int main(int argc, char* argv[])
{
  cout <<  "hellow world! c++11 Windows/Linux" << endl;
  
  ImageProcessing ip;
  ip.readimage();
  
  printimage();

  log_data("hellow log data", LogType::MESSAGE);
  
  return 0;
}
