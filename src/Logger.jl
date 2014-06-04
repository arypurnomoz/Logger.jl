module Logger

export @p, @sz

const COLOR = [
  "\033[91m"
  "\033[92m"
  "\033[93m"
  "\033[94m"
  "\033[95m"
  "\033[96m"
]

const COLOR_VARIANCE = length(COLOR)

macro p(arg...)
  if length(arg) == 1
    :(println($(esc(arg[1]))))
  else
    key, str = arg
    color = (hash(key) % COLOR_VARIANCE) + 1
    :(println($(COLOR[color]), $(string(key)), ": \033[0m", $(esc(str))))
  end
end

macro sz(x)
  :(println($(string(x)), " => ", length($(esc(x)))))
end

end
