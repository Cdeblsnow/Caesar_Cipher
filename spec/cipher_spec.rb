require_relative "../lib/caesar_cipher"

describe Cipher do
  describe "#transform_sentence" do
    subject(:my_sentence) { described_class.new("papa", 5) }

    it "accepts a positive shift" do
      expect(my_sentence.transform_sentence).to eq("ufuf")
    end

    context "when the shift is negative" do
      subject(:my_sentence) { described_class.new("papa", -5) }

      it "accepts a negative shift" do
        expect(my_sentence.transform_sentence).to eq("kvkv")
      end
    end

    context "when the sentence have a z" do
      subject(:my_sentence) { described_class.new("zaza", 10) }
      it "wraps from z to a" do
        expect(my_sentence.transform_sentence).to eq("jkjk")
      end
    end
  end
end
