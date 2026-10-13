let rec is_nonagonal (n : int) : int =
    if n < 0 then raise (Invalid_argument "Number cannot be negative")
    else if n = 0 then 0
    else (n * ((7 * n) - 5)) / 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
