defmodule Example.SampleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          clock: non_neg_integer
        }

  defstruct [:name, :clock]

  field :name, 1, type: :string
  field :clock, 2, type: :uint64
end

defmodule Example.SampleReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          ercd: String.t()
        }

  defstruct [:message, :ercd]

  field :message, 1, type: :string
  field :ercd, 2, type: :string
end

defmodule Example.SampleService.Service do
  @moduledoc false
  use GRPC.Service, name: "example.SampleService"

  rpc :Request, Example.SampleRequest, Example.SampleReply
end

defmodule Example.SampleService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Example.SampleService.Service
end
