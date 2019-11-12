defmodule EET.Application do
  use Application
  import Supervisor.Spec, warn: false

  @spec start(any, any) :: {:error, any} | {:ok, pid}
  def start(_type, _args) do
    children = [
      {EET.Repo, []}
    ]

    opts = [strategy: :one_for_one, name: EET.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
