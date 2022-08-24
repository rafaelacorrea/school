defmodule Student do
  @moduledoc """
  Define a Student struct and functions to handle a student.
  """
  defstruct name: nil, result: []

  @spec first_name(%Student{}) :: String.t()
  @doc """
  Get the first name of a Student.

  ## Parameters

  - `student` - A Student struct.

  ## Exemples

  * rafaela = %Student{name: "Rafaela Carvalho"}
  * Student.first_name(rafaela)
  * "Rafaela"
  """
  def first_name(student), do: student.name |> String.split() |> List.first()

  @spec last_name(atom | %{:name => binary, optional(any) => any}) :: any
  @doc """
  Get the last name of a Student.

  ## Parameters

  - `student` - A Student struct.

  ## Exemples

  * rafaela = %Student{name: "Rafaela Carvalho"}
  * Student.last_name(rafaela)
  * "Carvalho"
  """
  def last_name(student), do: student.name |> String.split() |> List.last()
end
