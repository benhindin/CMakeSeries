#include "include/ImageProcessing.h"
#include "include/operations.h"
#include <iostream>
using namespace std;

int main(int argc, char* argv[])
{
  cout <<  "hellow world! c++11 Windows/Linux" << endl;
  
  ImageProcessing ip;
  ip.readimage();

  printimage();
  
  return 0;
}
