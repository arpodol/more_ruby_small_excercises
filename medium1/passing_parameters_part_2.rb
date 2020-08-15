def bird_seperator(collection)
  yield(collection)
end


raptors = []
birds = %w(raven finch hawk eagle)
bird_seperator(birds){ |_,_, *raptors| puts raptors.join(', ')}

