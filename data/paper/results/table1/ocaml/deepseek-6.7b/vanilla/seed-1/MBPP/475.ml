let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
    match dict1 with 
    | [] -> []
    | head::tail ->
        let sorted_tail = sort_counter tail in 
        let rec insert_sorted_tail (current : (string * int) list) (current_head : (string * int)) : (string * int) list =
            match current with
            | [] -> [current_head]
            | head_current::tail_current -> 
                if (snd head_current) > (snd current_head)
                then (fst head_current, snd head_current) :: (insert_sorted_tail tail_current current_head)
                else current_head :: current
        in 
        insert_sorted_tail sorted_tail head

let rec sort_list (dict1 : (string * int) list) : (string * int) list =
    match dict1 with 
    | [] -> []
    | head::tail ->
        let sorted_tail = sort_list tail in 
        let rec insert_sorted_tail (current : (string * int) list) (current_head : (string * int)) : (string * int) list =
            match current with
            | [] -> [current_head]
            | head_current::tail_current -> 
                if (snd head_current) > (snd current_head)
                then (fst head_current, snd head_current) :: (insert_sorted_tail tail_current current_head)
                else current_head :: current
        in 
        insert_sorted_tail sorted_tail head

let sort_assoc_list lst =
    let dict1 = List.sort (fun (x,_) (y,_) -> compare x y ) lst in
    let res = sort_counter dict1 in
    res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
