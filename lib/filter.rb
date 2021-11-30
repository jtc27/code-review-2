

def filter(sound_wave, lower_limit = 40, upper_limit =1000)

  filtered_sound_wave = []

  sound_wave.each do |freq|
    raise 'Sound waves are not parsed correctly' unless 
    if freq > upper_limit
      filtered_sound_wave << upper_limit
    
    elsif freq < lower_limit
      filtered_sound_wave << lower_limit
    else
      filtered_sound_wave << freq
    end
  end

  return filtered_sound_wave
end

