require_relative '../prob5'

RSpec.describe TemperatureConverter do
    describe ".celsius_to_fahrenheit" do
        it "correctly converts 0°C to 32°F" do
            celcius = 0
            to_fahrenheit = 32
            conversion = TemperatureConverter.celsius_to_fahrenheit(celcius)
            expect(conversion).to eq(to_fahrenheit)
    end

        it "correctly converts 100°C to 212°F" do
            celcius = 100
            to_fahrenheit = 212
            conversion = TemperatureConverter.celsius_to_fahrenheit(celcius)
            expect(conversion).to eq(to_fahrenheit)
        end
    end

    describe ".fahrenheit_to_celsius" do
        it "correctly converts 32°F to 0°C" do
            fahrenheit = 32
            to_celcius = 0
            conversion = TemperatureConverter.fahrenheit_to_celsius(fahrenheit)
            expect(conversion).to eq(to_celcius)
        end

        it "correctly converts 212°F to 100°C" do
            fahrenheit = 212
            to_celcius = 100
            conversion = TemperatureConverter.fahrenheit_to_celsius(fahrenheit)
            expect(conversion).to eq(to_celcius)
        end
    end
end