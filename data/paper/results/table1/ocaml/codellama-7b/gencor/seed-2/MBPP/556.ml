
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | (x::y::xs) -> if x lxor y = n then 1 else 0 + find_Odd_Pair (y::xs) n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
