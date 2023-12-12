push!(LOAD_PATH, "@stdlib")  # NOTE: this is needed to enable this test to run from the Pkg manager
push!(LOAD_PATH, joinpath(@__DIR__, ".."))
using Test
using Pkg
Pkg.activate(joinpath(@__DIR__, "test_projects", "Diffusion3D"))
Pkg.instantiate()
import AMDGPU
using Diffusion3D
@test diffusion3D(AMDGPUBackend) <: AMDGPU.ROCArray
