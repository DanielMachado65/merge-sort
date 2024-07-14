require 'rspec'
require 'pry'
require_relative 'main'

describe 'MergeSort' do
  it 'ordena uma lista grande corretamente' do
    large_list = (1..10000).to_a.shuffle
    sorted_list = merge_sort(large_list)
    expect(sorted_list).to eq((1..10000).to_a)
  end

  it 'orderna uma lista pequena corretamente' do
    small_list = (1..10).to_a.shuffle
    sorted_list = merge_sort(small_list)
    expect(sorted_list).to eq((1..10).to_a)
  end

  it 'orderna uma lista de tamanho 1 corretamente' do
    list = [1]
    sorted_list = merge_sort(list)
    expect(sorted_list).to eq([1])
  end

  it 'orderna uma lista de tamanho 0 corretamente' do
    list = []
    sorted_list = merge_sort(list)
    expect(sorted_list).to eq([])
  end
end
