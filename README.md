# Stock-Buy

## How to run this solution

1. If you have Dart runtime on you computer, you can pull this source code

```git pull git@github.com:thiagobrunoms/Stock-Buy.git```

2. Another option is through a Docker container

```docker pull thiagobrunoms/stockandbuy```

## The problem:

The problem is to model a product (a bundle) that is built from a set of other products (other bundles). For instance, a bike is composed by several other parts, like wheels, pedals, seat etc.

The overwall problem design is depicted in the following image:

![image](https://user-images.githubusercontent.com/8793313/200149536-58bc63ac-e477-4e2c-9b86-a257fa305039.png)

Given the inventory count of each leaf element in the bundle structure, write a simple program that computes the maximum number of finished bundles one can build.

## The solution:

My solution is based on the [Composite Design Pattern](https://refactoring.guru/design-patterns/composite). The "BundlePiece" represents a leaf node, while the "CompoundBundle" is a bundle that has other bundle parts (like a wheel that has tubes). Each bundle has the ```minimum``` attribute, which represents how many instances of such bundle there should be to build the main product (bundle). For instance, each bike should have a minimium of 1 seat, a minimum of 1 frame, a minimum of 2 tubes, a minimum of 2 pedals and a minimum of 2 wheels. 

To calculate the maximum number of finished "bikes" (for instance, the final result should be 17 for the given test case), the compound bundle "Bike" (the root node of the tree) starts searching the maximum possibilities of each of its bundles (children nodes). Each bundle in the path requests to its children the total number that can be built given its minimum "instances" (e.g.: only one seat is enough; or two wheels should exist) and the total number of available bundles in stock. For instance, if there are 50 wheels available in stock, we can just build 25 bikes (minimum = 2). After all of each compound bundle's children returning each maximum result, the maximum number of products will be the minimum number (or the smallest value) of one of its bundles. For instance, if there are 50 seats, 60 pedals, 60 frames and 35 tubes (no matter how many wheels), the maximum number of bikes will be 17, since 35 tubes has a minimum of 1 for each wheel. Since a bike should have 2 wheels, hence, 35 / 2 = 17 (no matter the total number of other bike's bundles). 
