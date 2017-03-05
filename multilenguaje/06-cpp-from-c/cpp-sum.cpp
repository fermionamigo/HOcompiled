#include <cstdlib>
#include "cpp-sum.h"

namespace Mate{
	extern "C" {
		int sum_abs(const int * const in, const int num);
	}
};

int Mate::sum_abs(const int * const in, const int num) {
   int sum=0;
   for (int i=0; i < num; ++i) {
       sum += abs(in[i]);
   }
   return sum;
}
 
