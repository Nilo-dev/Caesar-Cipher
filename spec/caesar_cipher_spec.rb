# frozen_string_literal: true

require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe '#caesar_cipher' do
  it 'desloca corretamente letras minúsculas' do
    expect(caesar_cipher('abc', 2)).to eql('cde')
  end

  it 'desloca corretamente letras maiúsculas' do
    expect(caesar_cipher('XYZ', 3)).to eql('ABC')
  end

  it 'mantém os caracteres não alfabéticos intactos' do
    expect(caesar_cipher('Hello, World!', 5)).to eql('Mjqqt, Btwqi!')
  end

  it 'funciona com shift no final do alfabeto' do
    expect(caesar_cipher('xyz', 3)).to eql('abc')
  end

  it 'funciona com shift negativo' do
    expect(caesar_cipher('abc', -2)).to eql('yza')
  end

  it 'retorna a mesma string se o shift for zero' do
    expect(caesar_cipher('Test', 0)).to eql('Test')
  end

  it 'mantém o case (maiúsculas e minúsculas) no deslocamento' do
    expect(caesar_cipher('RubyOnRails', 10)).to eql('BeliYxBksvc')
  end
end
