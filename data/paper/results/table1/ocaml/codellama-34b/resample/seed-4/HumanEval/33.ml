(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal *)
(*     to the values of the corresponding indicies of l, but sorted. *)
(*     >>> sort_third [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_third [5; 6; 3; 4; 8; 9; 2] *)
(*     [2; 6; 3; 4; 8; 9; 5] *)
let rec sort_third (l : int list) : int list = 
    let should_sort = function
        | x -> if (x mod 3) == 0 then true
        else false
    in
    let sort l = 
        let rec sort_helper (l : int list) (acc : int list) : int list = 
            match l with
            | [] -> acc
            | [ ] -> l
            | hd::tl -> sort_helper (tl@[hd]) acc
        in
        sort_helper l []
    in
    if l = [] then []
    else if should_sort l then sort (head l)
    else head l
