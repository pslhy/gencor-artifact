let rec largest_divisor (n : int) : int =
    if n = 1 then 1
    else if n mod 2 = 0 then n / 2
    else 
        let rec check_for_divisor (d : int) : int =
            if d = 1 then 1
            else if n mod d = 0 then d
            else check_for_divisor (d - 1)
        in
        check_for_divisor (n / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
