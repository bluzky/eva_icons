# EvaIcon

![CI](https://github.com/zoedsoupe/lucide_icons/actions/workflows/ci.yml/badge.svg)

This package adds a convenient way of using [Eva](https://akveo.github.io/eva-icons/) with your Phoenix.LiveView applications.


Add `eva_icons` to the list of dependencies in `mix.exs`:

```elixir dark
def deps do
  [
    {:eva_icons, "~> 1.0.0"}
  ]
end
```

Then run `mix deps.get`.

## Usage

#### With Heex

```elixir dark
EvaIcon.slash class="h-4 w-4" aria-hidden/>
```

where `slash` refers to a specific icon name.

> Icon names can be retrieved from `EvaIcon.icon_names/1`
