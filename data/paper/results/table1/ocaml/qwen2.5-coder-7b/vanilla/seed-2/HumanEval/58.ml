let rec common (l1 : int list) (l2 : int list) : int list = 
    let rec filter_duplicates (lst : int list) : int list = 
        match lst with 
        | [] -> []
        | x :: xs -> x :: filter_duplicates (List.filter (fun y -> y <> x) xs)
    in
    let rec helper (l1 : int list) (l2 : int list) : int list = 
        match (l1, l2) with 
        | ([], _) | (_, []) -> []
        | (x :: xs, y :: ys) -> 
            if x = y then x :: helper xs ys 
            else if x < y then helper xs l2 
            else helper l1 ys
    in
    helper (filter_duplicates l1) (filter_duplicates l2)
    |> List.sort compare


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique common elements for two lists. *)
(*     >>> common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121] *)
(*     [1; 5; 653] *)
(*     >>> common [5; 3; 2; 8] [3; 2] *)
(*     [2; 3] *)
