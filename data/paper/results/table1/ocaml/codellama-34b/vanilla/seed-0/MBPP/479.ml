let rec first_Digit (n : int) : int =
    if n < 1 then 0
    else let (x, y) = (n mod 10, n / 10) in
    if y = 0 then x
    else first_Digit y


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first digit of a given number. *)
