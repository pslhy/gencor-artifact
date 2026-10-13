(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
let rec last_Digit_Factorial (n : int) : int =
    (* base case: n = 0 *)
    if n = 0 then
        1
    else
        (* recursive case: n > 0 *)
        let factorial = n * (last_Digit_Factorial (n - 1)) in
        factorial mod 10

