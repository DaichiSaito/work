require_relative '../src/detector.rb'
require_relative '../src/strategy/ruby_basic_strategy.rb'
require_relative '../src/strategy/gorigori_strategy.rb'

RSpec.describe 'Detector' do
  let(:original) { (1..1000).to_a.shuffle }
  let(:comparison) { original.dup - [answer] }

  describe 'RubyBasicStrategy' do
    let(:strategy) { RubyBasicStrategy.new }
    describe '境界値分析' do
      context '1が取り除かれた場合' do
        let(:answer) { 1 }
        it '1が返ること' do
          expect(strategy.detect(original, comparison)).to eq answer
        end
      end

      context '1000が取り除かれた場合' do
        let(:answer) { 1000 }
        it '1000が返ること' do
          expect(strategy.detect(original, comparison)).to eq answer
        end
      end
    end

    describe '同値分割' do
      let(:answer) { 500 }
      it '500が返ること' do
        expect(strategy.detect(original, comparison)).to eq answer
      end
    end

    describe 'ランダム' do
      let(:answer) { original.sample }
      it '正しい結果が返ること' do
        expect(strategy.detect(original, comparison)).to eq answer
      end
    end
  end

  describe 'GorigoriStrategy' do
    let(:strategy) { GorigoriStrategy.new }
    describe '境界値分析' do
      context '1が取り除かれた場合' do
        let(:answer) { 1 }
        it '1が返ること' do
          expect(strategy.detect(original, comparison)).to eq answer
        end
      end

      context '1000が取り除かれた場合' do
        let(:answer) { 1000 }
        it '1000が返ること' do
          expect(strategy.detect(original, comparison)).to eq answer
        end
      end
    end

    describe '同値分割' do
      let(:answer) { 500 }
      it '500が返ること' do
        expect(strategy.detect(original, comparison)).to eq answer
      end
    end

    describe 'ランダム' do
      let(:answer) { original.sample }
      it '正しい結果が返ること' do
        expect(strategy.detect(original, comparison)).to eq answer
      end
    end
  end
end
