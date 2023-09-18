#!/usr/bin/env python

# Define the menu options
menuOptions = ["Calculate the position of the sun", "Calculate the position of the moon", "Calculate the position of the planets", "Calculate the next appearance of a fissure in time", "Exit"]

# Define the Antikythera mechanism
class AntikytheraMechanism:
    def __init__(self):
        self.sun_gear = Gear(1)
        self.moon_gear = Gear(27.321661)
        self.mercury_gear = Gear(87.969098)
        self.venus_gear = Gear(224.701019)
        self.mars_gear = Gear(686.971025)
        self.jupiter_gear = Gear(4332.58476)
        self.saturn_gear = Gear(10759.22084)

    def calculate_sun_position(self):
        sun_position = self.sun_gear.get_position()
        return sun_position

    def calculate_moon_position(self):
        moon_position = self.moon_gear.get_position()
        return moon_position

    def calculate_planet_position(self, planet_gear):
        planet_position = planet_gear.get_position()
        return planet_position

    def calculate_next_fissure_appearance(self):
        # Calculate the next appearance of a fissure in time
        days_until_fissure = 365.0 - self.sun_gear.get_position()
        return days_until_fissure

class Gear:
    def __init__(self, number_of_teeth):
        self.number_of_teeth = number_of_teeth
        self.position = 0

    def rotate(self):
        self.position += 1
        self.position %= self.number_of_teeth

    def get_position(self):
        return self.position

def display_information():
    # Display the app name, ABN, developer, GitHub, and Huggingface info
    print("\n")
    print("╔══════════════════════════════════════════╗")
    print("║          Antikythera Mechanism            ║")
    print("║          by ParallelDynamix               ║")
    print("║          ABN 11287984779                   ║")
    print("║          Developer Casey Jay Topojani      ║")
    print("║          GitHub: paralleldynamix          ║")
    print("║          Huggingface: paralleldynamix     ║")
    print("╚══════════════════════════════════════════╝")
    print("\n")

def main():
    while True:
        display_information()
        # Display the menu
        print("Antikythera Mechanism Menu")
        for i, option in enumerate(menuOptions):
            print(f"{i}. {option}")

        menuSelection = input("Please select an option: ")

        if menuSelection == "0":
            # Calculate the position of the sun
            antikythera_mechanism = AntikytheraMechanism()
            sun_position = antikythera_mechanism.calculate_sun_position()
            print(f"The sun is at position {sun_position}.")

        elif menuSelection == "1":
            # Calculate the position of the moon
            antikythera_mechanism = AntikytheraMechanism()
            moon_position = antikythera_mechanism.calculate_moon_position()
            print(f"The moon is at position {moon_position}.")

        elif menuSelection == "2":
            # Calculate the position of the planets
            antikythera_mechanism = AntikytheraMechanism()
            mercury_position = antikythera_mechanism.calculate_planet_position(antikythera_mechanism.mercury_gear)
            venus_position = antikythera_mechanism.calculate_planet_position(antikythera_mechanism.venus_gear)
            mars_position = antikythera_mechanism.calculate_planet_position(antikythera_mechanism.mars_gear)
            jupiter_position = antikythera_mechanism.calculate_planet_position(antikythera_mechanism.jupiter_gear)
            saturn_position = antikythera_mechanism.calculate_planet_position(antikythera_mechanism.saturn_gear)

            print("The position of the planets are as follows:")
            print(f"Mercury: {mercury_position}")
            print(f"Venus: {venus_position}")
            print(f"Mars: {mars_position}")
            print(f"Jupiter: {jupiter_position}")
            print(f"Saturn: {saturn_position}")

        elif menuSelection == "3":
            # Calculate the next appearance of a fissure in time
            antikythera_mechanism = AntikytheraMechanism()
            days_until_fissure = antikythera_mechanism.calculate_next_fissure_appearance()
            print(f"The next appearance of a fissure in time is in {days_until_fissure} days.")

        elif menuSelection == "4":
            # Exit the script
            print("Exiting the Antikythera Mechanism.")
            break
        else:
            print("Invalid option. Please select a valid option (0-4).")

if __name__ == "__main__":
    main()
