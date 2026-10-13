(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    let merge (l1 : int list) (l2 : int list) = 
        match l1, l2 with
        | [], [] -> []
        | [], x :: xs -> x :: merge [] xs
        | x :: xs, [] -> x :: merge xs []
        | x :: xs, y :: ys -> 
            if x < y then x :: merge xs (y :: ys)
            else y :: merge (x :: xs) ys
    in
    merge (merge num1 num2) num3

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:31: Unbound value "merge" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    let rec merge (l1 : int list) (l2 : int list) = 
        match l1, l2 with
        | [], [] -> []
        | [], x :: xs -> x :: merge [] xs
        | x :: xs, [] -> x :: merge xs []
        | x :: xs, y :: ys -> 
            if x < y then x :: merge xs (y :: ys)
            else y :: merge (x :: xs) ys
    in
    merge (merge num1 num2) num3

