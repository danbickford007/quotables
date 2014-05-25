require 'spec_helper'

describe Quote do
  
  let!(:quote_1) { Quote.create(author: 'guy 1', content: 'a quote about 1') }
  let!(:quote_2) { Quote.create(author: 'guy 2', content: 'a quote about 2') }

  describe '#next' do

    context 'quote after present' do
  
      it 'returns next quote' do
        expect(quote_1.next).to eq(quote_2) 
      end

    end

    context 'quote after not present' do
  
      it 'returns next first' do
        expect(quote_2.next).to eq(quote_1) 
      end

    end

  end
  
  describe '#previous' do

    context 'quote before present' do
  
      it 'returns previous quote' do
        expect(quote_2.prev).to eq(quote_1) 
      end

    end
    
    context 'quote before not present' do
  
      it 'returns previous quote' do
        expect(quote_1.prev).to eq(quote_2) 
      end

    end

  end

  describe '#generate_next' do

    context 'direction not correct' do
     
      it 'returns original quote' do
        expect(quote_1.generate_next('car')).to eq(quote_1)
      end

    end  
    
    context 'direction is next ' do
     
      it 'returns second quote' do
        expect(quote_1.generate_next('next')).to eq(quote_2)
      end

    end  

    context 'direction is prev ' do
     
      it 'returns first quote' do
        expect(quote_2.generate_next('previous')).to eq(quote_1)
      end

    end 

  end

end
