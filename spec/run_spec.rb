require_relative './spec_helper.rb'
require_relative '../run.rb'

describe 'Names Challenge' do
  context '#names_array' do
    it 'returns a string with each name in "names" with a comma between them' do
      expect(names_array(NAMES)).to eq(NAMES)
    end
  end

  context '#names_list' do
    it "returns a string with each name in 'names' with a comma between them" do
      n_list = names_list(NAMES)
      #expect list to be a string
      expect(n_list).to be_an(String)
      #expect list to include every name with a comma, bar the last
      (NAMES.length()-1).times do |iterator| 
        expect(n_list).to include("#{NAMES[iterator]},")
      end
      #expect list to include final name
      expect(n_list).to include("#{NAMES[NAMES.length()]}")
    end
  end

  context '#names_list_alphabetical' do
    it "returns a string with each name in 'names' with a comma between them in alphabetical order"do
      a_list = names_list_alphabetical(NAMES)

      #expect list to be a string
      expect(a_list).to be_an(String)
      #expect list to include every name with a comma, bar the last
      (NAMES.length()-1).times do |iterator| 
        expect(a_list).to include("#{NAMES[iterator]},")
      end
      #expect list to include final name
      expect(a_list).to include("#{NAMES[NAMES.length()]}")
      #expect list to be in alphabetical order
      expect(a_list).to eq("Alex, Anderson, Anna, Caroline, Frodo, Jason, Jess, Konrad, Maicon, Manish, Natalie, Nimra, Robert, Serge, Suzy,  Will")

    end
  end

  context '#random_name' do
      it "returns one of the names at random" do  
        r_name = random_name(NAMES)
        #needs to be a string
        expect(r_name).to be_an(String)
        #needs to exist within Names
        expect(NAMES).to include(r_name)
      end
  end

  context '#random_team_split' do
    it 'returns a multidimensional array , the first array contains 8 random names, and the second array contains another 8 random names not in the first array' do
      r_split = random_team_split(NAMES)
      #needs to be 2 arrays in an array
      expect(random_team_split(NAMES)).to be_an(Array)
      expect(r_split.length()).to eq(2)

      2.times do |iterator|
        expect(r_split[iterator]).to be_an(Array)
        expect(r_split[iterator].length()).to eq(8)
      end

       #expect that both arrays within multi_d_array are random
       flat_array = r_split.flatten
        expect(flat_array).not_to eq(NAMES)

       #expect that multi_d_array[0] is unique to multi_d_array[1]
        expect(r_split[0]).not_to eq(r_split[1])
      
      end
    end



end









