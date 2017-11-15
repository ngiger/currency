# encoding: utf-8
$: << File.dirname(__FILE__)
require 'spec_helper'
require 'currency'
require 'rspec'

describe Currency do
  it 'should convert correctly from CHF to EUR' do
    rate =  Currency.rate('CHF', 'EUR')
    expect(rate.class).to eq Float
    expect(rate).to be < 1.0
    expect(rate).to be > 0.5
  end
end
