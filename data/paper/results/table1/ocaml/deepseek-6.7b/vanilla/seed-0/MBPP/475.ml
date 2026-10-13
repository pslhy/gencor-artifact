let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
    match dict1 with 
    |[] -> []
    |(x, y)::dict_tail ->
    let sorted_tail = sort_counter dict_tail in
    insert_in_order (x, y) sorted_tail;;
    
and insert_in_order (key_val : string * int) (dict : (string * int) list) : (string * int) list =
    match dict with 
    |[] -> [key_val]
    |(x,y)::dict_tail ->
        if y <= (snd key_val)
        then key_val :: dict
        else (x,y) :: insert_in_order key_val dict_tail;;
        
let sort_by_value = sort_counter;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
