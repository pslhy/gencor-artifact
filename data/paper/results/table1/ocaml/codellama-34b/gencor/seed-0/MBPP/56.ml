
let rec checks (n : int) : bool =
    if n < 1 then false
    else if n = (n / 10) then true
    else if (n mod 2) = 1 then checks (n / 10)
    else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
