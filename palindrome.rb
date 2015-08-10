require 'test/unit'

extend Test::Unit::Assertions

def palindrome?(text)
  text.tr!(' ', '')
  text.tr!('!', '')
  text.tr!(',', '')
  text.tr!('\'', '')
  text.downcase!
  text == text.reverse
end

assert(palindrome?('No \'x\' in Nixon'))
assert(palindrome?('A man, a plan, a canal, Panama!'))
assert(palindrome?('Not a palindrome') == false)

