let rec sort_even (l : int list) : int list =
    let rec aux l acc =
        match l with
        | [] -> acc
        | [x] -> acc @ [x]
        | x1 :: x2 :: xs ->
            if x1 < x2 then
                aux xs (acc @ [x1; x2])
            else
                aux xs (acc @ [x2; x1])
    in
    aux l []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the odd indicies, while its values at the even indicies are equal *)
(*     to the values of the even indicies of l, but sorted. *)
(*     >>> sort_even [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_even [5; 6; 3; 4] *)
(*     [3; 6; 5; 4] *)
