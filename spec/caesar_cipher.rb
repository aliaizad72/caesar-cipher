# frozen_string_literal: true

require './lib/caesar_cipher.rb'

describe CaesarCipher do
  cipher_machine = CaesarCipher.new
  describe '#cipher' do
    it 'ciphers one word with the shift factor of 19' do
      expect(cipher_machine.cipher('peanut', 19)).to eql('ixtgnm')
    end

    it 'ciphers one word with punctuation with shift factor of 19' do
      expect(cipher_machine.cipher('peanut!', 19)).to eql('ixtgnm!')
    end

    it 'ciphers one word with capitalisation with shift factor of 19' do
      expect(cipher_machine.cipher('Peanut', 19)).to eql('Ixtgnm')
    end

    it 'ciphers one word with capitalisation and punctuation with shift factor of 19' do
      expect(cipher_machine.cipher('Peanut!', 19)).to eql('Ixtgnm!')
    end

    it 'ciphers multiple word sentence with punctuation and capitalisation, with shift factor of 13' do
      expect(cipher_machine.cipher('Ave Imperator! Morituri te salutant.', 13)).to eql('Nir Vzcrengbe! Zbevghev gr fnyhgnag.')
    end
  end
end
