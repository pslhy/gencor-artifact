(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first digit of a given number. *)
let rec first_Digit (n : int) : int =
    if n <= 0 then None
    else
      let (q, r) = (n, 0) in
      if r = 0 then n
      else first_Digit (q / 10)

