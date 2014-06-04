# Logger

A logger for julia

```jl
import Logger

# basic printing
@p "hello world" # will print 'hello world'
@p key "value" # will print 'key: value'

someArray = ones(10,10)
@sz someArray # will print 'someArray => (10,10)'

```
