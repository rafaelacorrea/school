defmodule AverageCalculator do
  @moduledoc """
  Define a AverageCalculator module and functions to execute it.
  """
  @doc """
  Start the system to process some result.
  """
  def start do
    rafaela = %Student{name: "Rafaela Carvalho", result: build_subjects([5.2, 3.9, 2.7, 9.8])}
    frank = %Student{name: "Frank Ferreira", result: build_subjects([8.4, 7.5, 9.4, 2.8])}
    aneliza = %Student{name: "Aneliza Ferreira", result: build_subjects([1.3, 8.5, 8.9, 7.6])}
    andre = %Student{name: "Andre Carvalho", result: build_subjects([5.4, 4.9, 2.2, 3.8])}
    result = calculate([rafaela, frank, aneliza, andre])
    best = best_result(result)

    {result, best}
  end

  @doc """
  Get all students with their averages.

  ##Parameters
  - `students` - A list of Student structs.
  """
  def calculate(students) do
    students
    |> Enum.map(
      &%{
        first_name: Student.first_name(&1),
        last_name: Student.last_name(&1),
        average: average(&1)
      }
    )
    |> Enum.sort(:desc)
  end

  @doc """
  Calculate the average of a Student.

  ## Parameters

  - `student` - A Student struct.
  """
  def average(student) do
    total = Enum.count(student.result)

    result =
      student.result
      |> Enum.map(& &1.result)
      |> Enum.reduce(&(&1 + &2))

    Float.ceil(result / total, 2)
  end

  @doc """
  Get the greater average.

  ## Parameters

  - `students` - A list of students with their averages.
  """
  def best_result(students) do
    best =
      students
      |> Enum.map(& &1.average)
      |> Enum.max()

    students
    |> Enum.filter(&(&1.average === best))
  end

  @doc """
  Build some subjects and some random result.

  ## Parameters

  - `result` - A list of result.
  """
  def build_subjects(result) do
    subjects = ["Matemática", "Português", "Geografia", "História"]

    subjects
    |> Enum.map(&%Subject{name: &1, result: Enum.random(result)})
  end
end
