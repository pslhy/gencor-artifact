let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        if (h land 1) = (n land 1) then
            1 + find_Odd_Pair t n
        else
            0

let count_Odd_Pair (a : int list) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        let n = find_Odd_Pair a h in
        n + count_Odd_Pair t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
