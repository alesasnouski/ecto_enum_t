defmodule EET.Repo.Migrations.Initial do
  use Ecto.Migration

  def states do
    EET.XMPP.states()
    |> Keyword.keys()
    |> Enum.map(&Atom.to_string(&1))
    |> Enum.map(&"'#{&1}'")
    |> Enum.join(",")
  end

  def change do
    create table("xmpp_states") do
      add(:xstate, :tinyint, comment: "Xmpp states")
    end

    execute(
      "ALTER TABLE `xmpp_states` MODIFY COLUMN `xstate` ENUM(" <>
        states() <> ") NOT NULL DEFAULT 'none';"
    )
  end
end
