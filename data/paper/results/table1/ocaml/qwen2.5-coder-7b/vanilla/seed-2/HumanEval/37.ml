let rec sort_even (l : int list) : int list = 
    let rec sort lst = 
        List.sort compare lst 
    in 
    let rec aux lst even_idx sorted_even residual = 
        match lst with 
        | [] -> List.append even_idx sorted_even
        | x::y::xs -> 
            if even_idx mod 2 = 0 then 
                aux xs (even_idx + 2) (x::sorted_even) y::xs
            else 
                aux y::xs (even_idx + 2) sorted_even xs
    in 
    aux l 0 [] l


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
