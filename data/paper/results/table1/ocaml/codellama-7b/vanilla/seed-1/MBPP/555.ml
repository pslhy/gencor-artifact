let rec difference (n : int) : int =
    let sum_of_cubes = sum_of_cubes n in
    let sum_of_numbers = sum_of_numbers n in
    sum_of_cubes - sum_of_numbers

and sum_of_cubes (n : int) : int =
    let rec sum_cubes (n : int) (i : int) : int =
        if n = 0 then
            0
        else
            i * i * i + sum_cubes (n - 1) (i + 1)
    in
    sum_cubes n 1

and sum_of_numbers (n : int) : int =
    let rec sum_numbers (n : int) (i : int) : int =
        if n = 0 then
            0
        else
            i + sum_numbers (n - 1) (i + 1)
    in
    sum_numbers n 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
