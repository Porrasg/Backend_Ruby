require 'spec_helper'
require_relative '../calculator'

describe "Calculadora" do
    # let {:calculator}{Calculator.new}
    it "suma dos números positivos" do
        calculator = Calculator.new
        expect(calculator.add(2, 3)).to eq(5)
    end

    it "resta dos números positivos" do
        calculator = Calculator.new
        expect(calculator.subtract(5, 2)).to eq(3)
    end

    it "multiplica dos números positivos" do
        calculator = Calculator.new
        expect(calculator.multiply(5, 2)).to eq(10)
    end

    it "divide dos números positivos" do
        calculator = Calculator.new
        expect(calculator.divide(6, 2)).to eq(3)
    end

    # it 'lanza un error ArgumentError' do
    #     calculator = Calculator.new
    #     expect{calculator.divide(10, 0)}.to raise_error(ArgumentError,"No puedes dividir entre cero")
    # end

end