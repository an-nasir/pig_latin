def pig_latin sentence
  sentence.split(' ').inject( [] ) { |result, word| result <<  ( word.starts_with?( *%w(a e i o u A E I O U) ) ? word<<"ay" : word.slice( 1, word.length ) << word[0]<<"ay" ) }.join(' ')
end

#call method
pig_latin "The Quick Brown Fox Jumps Over The Lazy Dog. Eat dogy food. She also jumped and pluck an apple. Meantime linux was being installed. An owl was watching all this"
