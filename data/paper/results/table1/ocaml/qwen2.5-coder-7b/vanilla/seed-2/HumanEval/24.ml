let rec largest_divisor (n : int) : int = 
    let rec find_divisor x =
        if x <= 1 then 1
        else if n mod x = 0 then x
        else find_divisor (x - 1)
    in
    find_divisor (n - 1)

let () =
    Printf.printf "%d\n" (largest_divisor 15) (* Output: 5 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
