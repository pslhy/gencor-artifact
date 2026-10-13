let rec combinations_colors (l : string list) (n : int) : string list list = 
    let rec combine acc k remain =
        if k = 0 then acc
        else
            match remain with
            | [] -> acc
            | h::t -> combine ((List.map (fun x -> x ^ h) acc) @ t) (k - 1) t
    in
    combine [[]] n l

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)
