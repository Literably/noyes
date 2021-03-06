require 'complex'

module Noyes
  include Math
  # Takes the discrete Fourier transform.
  def dft data,size
    vals = Array.new(size) do |i| 
      i < data.size ? Complex(data[i],0) : Complex(0,0)
    end
    j=0
    size.times do |i|
      vals[j],vals[i] = vals[i],vals[j] if i<j
      m = size/2
      while j>=m && m>1
        j-=m 
        m/=2
      end
      j+=m
    end
    k=1
    while k<size
      incr = 2*k
      mul = Complex.polar 1, Math::PI/k
      w = Complex(1, 0)
      k.times do |i|
        i.step(size-1,incr) do |j|
          tmp =  w * vals[j+k]
          vals[j+k],vals[j]=vals[j]-tmp,vals[j]+tmp
        end
        w *= mul;
      end
      k=incr
    end
    vals
  end
  module_function :dft
end
