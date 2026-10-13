(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | (x::xs) ->
        let xor_val = (n lxor x) in
        if xor_val mod 2 = 1 then 1 + find_Odd_Pair(xs, n)
        else find_Odd_Pair(xs, n)

