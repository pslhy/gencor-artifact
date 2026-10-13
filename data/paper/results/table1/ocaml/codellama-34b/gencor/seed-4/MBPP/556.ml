
let rec find_Odd_Pair (a : int list) (n : int) : int = 
    (* base case: a has less than 2 elements *)
    if List.length a < 2 then 0 
    (* recursive case: a has at least 2 elements *)
    else 
        let half = List.length a / 2 in
        (* if the xor of the first half and the second half is odd, add 1 to the result *)
        if (List.fold_left (lxor) 0 (List.map (fun x -> x && half) a)) mod 2 = 1 then 
            find_Odd_Pair (List.split a) (n + 1)
        else
            find_Odd_Pair (List.split a) n

let count_odd_pairs (a : int list) : int = 
    find_Odd_Pair a 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
