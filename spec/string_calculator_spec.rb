require "#{File.dirname(File.absolute_path(__FILE__))}/../string_calculator.rb"

RSpec.describe StringCalculator do
  describe "#add" do
    subject { StringCalculator.new(input).add }

    context "when input is empty" do
      let(:input) { "" }

      it "returns 0" do
        expect(subject).to eq(0)
      end
    end

    context "when input is one number" do
      let(:input) { "1" }

      it "returns the number" do
        expect(subject).to eq(1)
      end
    end

    context "when input is multiple numbers" do
      context "and numbers are seperated by comma only" do
        context "when numbers are 2 and 3" do
          let(:input) { "2,3" }

          it "returns 5" do
            expect(subject).to eq(5)
          end
        end

        context "when numbers are 30 and 40" do
          let(:input) { "30,40" }

          it "returns 70" do
            expect(subject).to eq(70)
          end
        end
      end

      context "and numbers are seperated by newline or comma" do
        context "when numbers are 1 and 2" do
          let(:input) { "1\n2" }

          it "returns 3" do
            expect(subject).to eq(3)
          end
        end

        context "when numbers are 1, 2, 3, 4" do
          let(:input) { "1\n2,3\n4" }

          it "returns 10" do
            expect(subject).to eq(10)
          end
        end
      end
    end
  end
end
