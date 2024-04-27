#include <torch/torch.h>
#include <iostream>

int main() {
    // Create a tensor of size (2, 3) filled with random values
    auto tensor = torch::randn({2, 3});
    
    // Print the tensor
    std::cout << "Tensor:\n" << tensor << std::endl;
    
    return 0;
}
