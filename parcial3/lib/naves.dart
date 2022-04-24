import 'package:flutter/material.dart';

class results {
  String name = "nombre: ";
  String model = "";
  String manufacturer = "";
  String cost_in_credits = "";
  String length = "";
  String max_atmosphering_speed = "";
  String crew = "";
  String passengers = "";
  String cargo_capacity = "";
  String consumables = "";
  String hyperdrive_rating = "";
  String MGLT = "";
  String starship_class = "";

  results(
      name,
      model,
      manufacturer,
      cost_in_credits,
      length,
      max_atmosphering_speed,
      crew,
      passengers,
      cargo_capacity,
      consumables,
      hyperdrive_rating,
      MGLT,
      starship_class) {
    this.name = name;
    this.model = model;
    this.manufacturer = manufacturer;
    this.cost_in_credits = cost_in_credits;
    this.length = length;
    this.max_atmosphering_speed = max_atmosphering_speed;
    this.crew = crew;
    this.passengers = passengers;
    this.cargo_capacity = cargo_capacity;
    this.consumables = consumables;
    this.hyperdrive_rating = hyperdrive_rating;
    this.MGLT = MGLT;
    this.starship_class = starship_class;
  }
}
