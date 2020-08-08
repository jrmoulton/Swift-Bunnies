#include <iostream>
using namespace std;

class CostEstimate {
   public:
    static const double FudgeFactor;  // declaration of static class //
                                      // constant; goes in header file
};
const double                           // definition of static class
    CostEstimate::FudgeFactor = 1.35;  // constant; goes in impl. file

int main() {}

template <typename T>                            // because we don't
inline void callWithMax(const T &a, const T &b)  // know what T is, we
{                                                // pass by reference-to-
    f(a > b ? a : b);                            // const — see Item 20
}
