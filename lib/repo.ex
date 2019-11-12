defmodule EET.Repo do
  use Ecto.Repo,
    otp_app: :ecto_enum_t,
    adapter: Ecto.Adapters.MyXQL
end

defmodule EET.XMPP do
  import EctoEnum

  @states [
    none: 1,
    none_pending_out: 2,
    none_pending_in: 3,
    none_pending_out_in: 4,
    to: 5,
    to_pending_in: 6,
    from: 7,
    from_pending_out: 8,
    both: 9
  ]

  def states do
    @states
  end

  defenum(
    Enum,
    @states
  )
end

defmodule EET.XMPP.States do
  use Ecto.Schema

  schema "xmpp_states" do
    field(:xstate, EET.XMPP.Enum)
  end
end
