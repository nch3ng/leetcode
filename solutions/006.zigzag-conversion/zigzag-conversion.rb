# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  ret=''
  (0...num_rows).each do |i|
    if num_rows == 1
      return s
    end
    zigsize = num_rows*2 - 2

    base=i
    while true

      if base >= s.size
        break;
      end

      ret+=s[base]

      if i>0 && i<num_rows-1
        z_i = base+zigsize-(i*2)
        if z_i < s.size
          ret+=s[z_i]

        end
      end
      base += zigsize
    end

  end
  return ret
end