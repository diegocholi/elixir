# Elixir

### Instalação do Elixir: [Elixir](https://elixir-lang.org/install.html)
### Instalação do Phoenix v1.5.7

    mix archive.install hex phx_new 1.5.7 

### Criando um projeto com o Phoenix

    mix phx.new project_name --no-webpack --no-html

--no-webpack: Parâmetro para remover serviços Javascript 

--no-html: Parâmetro para remvoer serviços HTML

Passamos esses dois parâmetros pois iremos construir uma API nesse projeto.

### Extensões VS-CODE
    
    ElixirLinter

    ElixirLS

Nas configurações do ElixirLS desabilitar o Dialyzer e o Suggest Specs

#### Configuração do credo
O credo é um análizador sintático de código. Está configuração irá disponibiliza-lo em nosso projeto.

No arquivo mix.exs, em deps, adicionar a seguinte linha:

    {:credo, "~> 1.5", only: [:dev, :test], runtime: false}

Deverá ficar assim:

    defp deps do
        [
            {:phoenix, "~> 1.5.7"},
            {:phoenix_ecto, "~> 4.1"},
            {:ecto_sql, "~> 3.4"},
            {:postgrex, ">= 0.0.0"},
            {:phoenix_live_dashboard, "~> 0.4"},
            {:telemetry_metrics, "~> 0.4"},
            {:telemetry_poller, "~> 0.4"},
            {:gettext, "~> 0.11"},
            {:jason, "~> 1.0"},
            {:plug_cowboy, "~> 2.0"},
            {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
        ]
    end

Para baixar/atualizar as depenêcias de projeto use o comando:
    
    mix deps.get

#### Compilar a aplicação e gerar a configuração do credo:

    mix credo gen.config

#### Documentação
Para não se preocupar com a documentação dos nossos módulos iremos alterar a linha 101 do .credo.exs:

de:
    
    {Credo.Check.Readability.ModuleDoc, []}
Para

    {Credo.Check.Readability.ModuleDoc, false}

### Executando migrations do postgress

    mix ecto.setup

### Executando o servidor PHX:

    mix phx.server