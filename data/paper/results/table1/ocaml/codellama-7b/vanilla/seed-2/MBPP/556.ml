let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | (x::y::xs) -> if xor x y = 1 then 1 + find_Odd_Pair xs n
                   else find_Odd_Pair xs n

let count_Odd_Pairs (a : int list) : int =
    let rec count_helper (a : int list) (n : int) (i : int) : int =
        if i >= n then 0
        else if xor a.(i) a.(i+1) = 1 then 1 + count_helper a n (i + 1)
        else count_helper a n (i + 1)
    in
    let n = Array.length a in
    count_helper a n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
