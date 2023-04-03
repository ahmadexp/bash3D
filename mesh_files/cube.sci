#--------------------------------------------------------------------------
# Cube
#--------------------------------------------------------------------------

#          p3                  p2 
#           +-------------------+
#           | \                 | \
#           |    \              |    \            ^y
#           |      \  p7        |       \         |
#           |         +-------------------+ p6    |
#           |         |         .         |       |
#           |         |*(cx,xy,cz)        |       o-------> x
#           |         |         .         |        \
#           |         |         .         |         \
#           |         |         .         |          v z
#        p0 +---------|.........+ p1      |
#            \        |           .       |
#              \      |             .     |
#                 \   |                .  |
#                    \+-------------------+
#                     p4                   p5
#

# Vertices
v -0.3535 -0.3535 -0.3535
v  0.3535 -0.3535 -0.3535
v  0.3535  0.3535 -0.3535
v -0.3535  0.3535 -0.3535
v -0.3535 -0.3535  0.3535
v  0.3535 -0.3535  0.3535
v  0.3535  0.3535  0.3535
v -0.3535  0.3535  0.3535

# Surfaces
f 0 1 2 3 R ~
f 0 4 7 3 R .
f 4 5 6 7 R =
f 5 1 2 6 R @
f 7 6 2 3 R ?
f 0 4 5 1 R +
