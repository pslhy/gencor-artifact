let rec square_Sum (n : int) : int =
    if n <= 0 then 0
    else if n mod 2 = 0 then n * n + square_Sum (n - 1)
    else square_Sum (n - 1)

let main (): unit =
    let n = int_of_string (Sys.argv.(1)) in
    let result = square_Sum n in
    print_endline (string_of_int result)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer n and returns the sum of squares of first n even natural numbers. *)
