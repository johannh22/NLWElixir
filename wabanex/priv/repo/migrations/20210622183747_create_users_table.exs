defmodule Wabanex.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :name, :string
      add :password, :string

      timestamps() # inserted at date and updated at date
    end

    create unique_index(:users, [:email])
  end
end
