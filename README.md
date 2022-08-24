# School

Is a program the calculate students averages. It can return the best average of a student, and the student with the best average in the school.

## Installation


 ```bash 
 git clone https://github.com/rafaelacorrea/school
 ```

## Run

Open terminal in the school directory, and execute the command: 
```bash
iex -S mix
```

When the iex is activate, we add the command below to see the registered students:
```bash 
iex> {result, best} = AverageCalculator.start()
```
and it returns:
```bash
{[
   %{average: 7.5, first_name: "Frank", last_name: "Ferreira"},
   %{average: 6.68, first_name: "Aneliza", last_name: "Ferreira"},
   %{average: 6.55, first_name: "Rafaela", last_name: "Carvalho"},
   %{average: 4.48, first_name: "Andre", last_name: "Carvalho"}
 ], [%{average: 7.5, first_name: "Frank", last_name: "Ferreira"}]}
```

To consult the average result of the students, we use the command below:
```bash
iex> result
```
It returns:
```bash
[
  %{average: 6.88, first_name: "Rafaela", last_name: "Carvalho"},
  %{average: 8.2, first_name: "Frank", last_name: "Ferreira"},
  %{average: 4.78, first_name: "Aneliza", last_name: "Ferreira"},
  %{average: 4.21, first_name: "Andre", last_name: "Carvalho"}
]
```
To know the student with the best average, we use the fallowing command:
```bash
iex> best
```
and the return is:
```bash
[%{average: 8.2, first_name: "Frank", last_name: "Ferreira"}]
```