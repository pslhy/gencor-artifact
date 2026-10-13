let rec sort_third (l : int list) : int list = 
    let rec sort_sublist (i : int) (l : int list) (acc : int list) : int list * int list = 
        match l with
        | [] -> ([], acc)
        | x::xs -> 
            if i mod 3 = 0 then
                let sorted, rest = List.fold_left (fun (a, b) y -> if y < x then (y::a, b) else (a, y::b)) ([], []) xs in
                (sorted @ [x], rest @ [x])
            else
                ([x], acc @ [x]) in
    let rec rebuild (l : int list) (sorted : int list) (result : int list) : int list = 
        match l with
        | [] -> result
        | _::xs -> 
            let head, tail = sort_sublist 0 (sorted @ xs) [] in
            rebuild tail head result in
    rebuild l [] []



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal *)
(*     to the values of the corresponding indicies of l, but sorted. *)
(*     >>> sort_third [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_third [5; 6; 3; 4; 8; 9; 2] *)
(*     [2; 6; 3; 4; 8; 9; 5] *)
