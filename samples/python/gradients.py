"""
This script demonstrates the use of PyTorch's autograd functionality to compute gradients.
It's worth noting that while PyTorch is not typically used for simple calculus tasks like this,
the script serves to illustrate how backward differentiation works in PyTorch.

The script defines a simple mathematical function and computes its derivative with respect to the input variable.

"""

import torch
import matplotlib.pyplot as plt

# Define the input variable
x = torch.linspace(-10, 10, 20, dtype=torch.float, requires_grad=True)

# Define intermediate tensors representing mathematical operations
pow1 = x.pow(2)
pow2 = pow1 * 2

# Compute the output of the function
out = pow2.sum() 

# Compute gradients using backward propagation
out.backward()

# Plot the vector
plt.plot(x.detach().numpy(), x.grad.detach().numpy(), label="dy/dx")  # Plot the derivative of the function
plt.plot(x.detach().numpy(), pow1.detach().numpy(), label="x^2")       # Plot x^2
plt.plot(x.detach().numpy(), pow2.detach().numpy(), label="y= 2*x^2")  # Plot 2*x^2

# Add legend
plt.legend()

# Add title and labels
plt.title('Grad test')
plt.xlabel('x')
plt.ylabel('y')

# Save the plot as an image
plt.savefig("/app/out/grad.png")
