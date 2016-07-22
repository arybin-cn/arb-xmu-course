require 'openssl'
require 'base64'

module Arb
  module Util
    class SimpleDes
      ALG = 'DES-EDE3-CBC'
      KEY = (Dir.pwd+'bYaRyBin')[0..7]
      DES_KEY = KEY.swapcase
      class << self
        %i{encrypt decrypt}.each do |type|
          define_method type do |input|
            if Array===input
              return [].tap do |arr|
                input.each do |item|
                  arr<<method(type)[item]
                end
              end
            end
            des = OpenSSL::Cipher::Cipher.new(ALG)
            des.pkcs5_keyivgen(KEY, DES_KEY)
            des.method(type)[]
            input=Base64.decode64(input) if :decrypt==type
            res = des.update(input)<<des.final
            return Base64.encode64(res).chomp if :encrypt==type
            res
          end
        end
      end
    end
  end
end