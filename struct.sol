// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

 contract structeg{
      struct Car{
          string model;
          uint year;
          address owner;
      }

      Car public car;
      Car[] public cars;
      mapping(address => Car[]) public carsbyowner;

      function example() public {
          Car memory toyota = Car("Innova", 2018, msg.sender);
          Car memory tata = Car({owner: msg.sender, year: 2022, model:"Harrier"});
          Car memory mahindra;
          mahindra.model = "XUV700";
          mahindra.year = 2021;
          mahindra.owner = msg.sender;

          cars.push(toyota);
          cars.push(tata);
          cars.push(mahindra);

          cars.push(Car("Hyundai", 2017, msg.sender));

          Car storage _car = cars[0];
          _car.year = 2025;
          delete _car.owner;

          delete cars[0];
      }
  }