# ecto_enum_t

Test project to ecto_enum PR: support loading of fields declared as ENUM type in mysql.

cd local_env && docker-compose -f docker-compose-services.yaml up -d && cd ..

mix ecto.create && mix ecto.migrate

```iex -S mix

iex(1)> EET.Repo.insert(%EET.XMPP.States{xstate: :to})
{:ok, ...}

iex(2)> EET.Repo.insert(%EET.XMPP.States{xstate: 2})
{:ok, ...}

iex(3)> EET.Repo.all(EET.XMPP.States)                   

10:00:08.611 [debug] QUERY OK source="xmpp_states" db=0.3ms queue=0.4ms
SELECT x0.`id`, x0.`xstate` FROM `xmpp_states` AS x0 []
** (FunctionClauseError) no function clause matching in EET.XMPP.Enum.load/1    
    
    The following arguments were given to EET.XMPP.Enum.load/1:
    
        # 1
        "none"
    
    Attempted function clauses (showing 9 out of 9):
    
        def load(1)
        def load(2)
        def load(3)
        def load(4)
        def load(5)
        def load(6)
        def load(7)
        def load(8)
        def load(9)
    
    (ecto_enum_t) lib/repo.ex:26: EET.XMPP.Enum.load/1
    (ecto) lib/ecto/type.ex:888: Ecto.Type.process_loaders/3
    (ecto) lib/ecto/repo/queryable.ex:356: Ecto.Repo.Queryable.struct_load!/6
    (ecto) lib/ecto/repo/queryable.ex:191: anonymous fn/5 in Ecto.Repo.Queryable.preprocessor/3
    (elixir) lib/enum.ex:1336: Enum."-map/2-lists^map/1-0-"/2
    (ecto) lib/ecto/repo/queryable.ex:182: Ecto.Repo.Queryable.execute/4
    (ecto) lib/ecto/repo/queryable.ex:17: Ecto.Repo.Queryable.all/3

```



