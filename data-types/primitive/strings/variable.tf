variable filename {
default=[[1234,1998,1234],["abx.txt","xyz.txt"], [true,false]]
type=list(list(any))
}

variable content {
    type = list(list(number))
}

# variable filename1 {
# default=true
# type=bool
# }

# variable content1 {
#     type=number
# }

# variable filename2 {
# type=string
# }

# variable content2 {
#     default=true
#     type=bool
# }

# variable filename3 {
# default=["a","b","c",1234]
# type=list
# }

# variable content3 {
#     default=["Hello","world",1234]
#     type=bool
# }

# variable filename4 {
# default=["a",b,"c",1234]
# type=list
# }

# variable content4 {
#     default=["Hello",world,1234]
#     type=list
# }

# variable filename5 {
# default=["abc.txt","xyz.txt","pqr.txt"]
# type=list
# }

# variable content5 {
#     default=["Good morning","good evening","good afternoon"]
#     type=list
# }