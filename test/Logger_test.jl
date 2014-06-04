module Logger_test
reload("$(pwd())/src/Logger.jl")
using Logger, JulieTest

# Write your test here

describe("Logger") do
  it("@p single") do
    @p "Hello world"
  end

  it("@p with key") do
    @p Hello "world"
  end

  it("@p single with outer variable") do
    x = "Hello world"
    @p x
  end

  it("@p with key and outer variable") do
    x = "world"
    @p Hello x
  end

  it("@sz") do
    x = ones(10,20)
    @sz x
  end
end

end
