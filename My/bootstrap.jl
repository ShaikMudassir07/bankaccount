(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir
import Pkg
Pkg.activate(".")
using My
push!(Base.modules_warned_for, Base.PkgId(My))
My.main()


