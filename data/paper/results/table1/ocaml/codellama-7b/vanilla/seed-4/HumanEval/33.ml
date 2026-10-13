let rec sort_third (l : int list) : int list = 
    match l with 
    | head :: tail -> 
        (match tail with 
        | [] -> head :: []
        | _ ->
            let divisible_head = head in 
                list_of_thirds_aux tail []
            )
    | [] -> []
and list_of_thirds_aux (l : 'a list) (accum : 'a list) : 'a list option = 
    match l with 
    | head :: tail -> 
        (match tail with 
        | [] -> Some (divisible_head :: accum)
        | _ -> list_of_thirds_aux tail (head :: accum)
        )
    | [] -> None
in 

let rec merge_thirds_aux (list1 : 'a list) (list2 : 'a list) (accum : 'a list) : 'a list = 
    match list1, list2 with 
    | [], [] -> accum
    | [], head2 :: tail2 -> merge_thirds_aux [] tail2 (head2 :: accum)
    | head1 :: tail1, [] -> merge_thirds_aux tail1 [] (head1 :: accum)
    | head1 :: tail1, head2 :: tail2 ->  
        if head1 == head2 then 
            merge_thirds_aux tail1 tail2 (head1 :: head2 :: accum)
        else if head1 > head2 then 
            merge_thirds_aux tail1 (head2 :: tail2) accum
        else 
            merge_thirds_aux (head1 :: tail1) tail2 accum
in 

let sort_third (l : 'a list) : 'a list = 
    merge_thirds_aux (sort_third l (List.filter (fun x -> (x mod 3) = 0)) [] (list_of_thirds_aux l) (merge_thirds_aux list_of_thirds (merge_thirds_aux l l)))
in
sort_third;;


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
