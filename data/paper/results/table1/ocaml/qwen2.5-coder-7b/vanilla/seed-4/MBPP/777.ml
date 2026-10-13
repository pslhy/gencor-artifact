let rec find_sum (arr : int list) : int = 
    let rec helper (lst : int list) (seen : int list) : int =
        match lst with
        | [] -> 0
        | x::xs -> if List.mem x seen then helper xs seen else x + helper xs (x::seen)
    in
    helper arr []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
