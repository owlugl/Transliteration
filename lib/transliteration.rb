require 'json'

class Translit
  def initialize
    file = File.read('hash_symbols.json')
    @hash = JSON.parse(file)
  end

  def ru_to_en(str)
    translit_symbols = []
    out_str = ''
    str.split(//).each {|symb| translit_symbols << @hash[symb]}
    translit_symbols.each {|symb| out_str += symb}
    out_str
  end

  # TODO. Method doesn't work.
  def en_to_ru(str)
    translit_symbols = []
    out_str = ''
    str.split(//).each do |s1, s2, s3, s4|
      case s1
      when 'Z'
        s2 == 'h' ? translit_symbols << @hash['Zh'] : translit_symbols << @hash['Z']
      when 'z'
        s2 == 'h' ? translit_symbols << @hash['zh'] : translit_symbols << @hash['z']
      when 'S'
        if s2 == 'h'
          if s3 == 'c'
            s4 == 'h' ? translit_symbols << @hash['Shch'] : translit_symbols << @hash['Sh']
        else
          translit_symbols << @hash['S']
      when 's'
        if s2 == 'h'
          if s3 == 'c'
            s4 == 'h' ? translit_symbols << @hash['shch'] : translit_symbols << @hash['sh']
        else
          translit_symbols << @hash['s']
      when 'C'
        s2 == 'h' ? translit_symbols << @hash['Ch'] : translit_symbols << @hash['C']
      when 'c'
        s2 == 'h' ? translit_symbols << @hash['ch'] : translit_symbols << @hash['c']
      when 'Y'
        if s2 == 'u' 
          translit_symbols << @hash['Yu']
        else
          s2 == 'a' ? translit_symbols << @hash['Ya'] : translit_symbols << @hash['Y']
      when 'y'
        if s2 == 'u' 
          translit_symbols << @hash['yu']
        else
          s2 == 'a' ? translit_symbols << @hash['ya'] : translit_symbols << @hash['y']
      end
    end
    translit_symbols.each {|symb| out_str += symb}
    out_str
  end
end
