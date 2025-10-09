# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Qt6Tools_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Qt6Tools")
JLLWrappers.@generate_main_file("Qt6Tools", UUID("41098d5d-486a-5be3-bd44-b646bda58606"))
end  # module Qt6Tools_jll
