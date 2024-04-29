#include <torch/torch.h>
#include <iostream>

int main() {
    // Create a tensor of size (2, 3) filled with random values
    auto tensor1 = torch::randn({2, 3});

    // // Print the tensor
    std::cout << "Tensor 1:\n" << tensor1 << std::endl;

    // User values tensor
    auto tensor2 = torch::tensor({{1, 2}, {3, 4}});
    // // Print the tensor
    std::cout << "Tensor 2:\n" << tensor2 << std::endl;

    return 0;
}
