
let rec frequency_lists (list1 : int list list) : (int * int) list = 
    let count acc x = 
        try 
            let assoc = List.assoc x acc in 
            List.remove_assoc x acc 
            @ [(x, assoc + 1)]
        with _ -> 
            (x, 1) :: acc
    in
    let rec flatten_lists lst = 
        match lst with
        | [] -> []
        | h::t -> h @ flatten_lists t
    in
    let flattened = flatten_lists list1 in
    let rec fold_list acc lst = 
        match lst with
        | [] -> acc
        | h::t -> fold_list (count acc h) t
    in
    fold_list [] flattened

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
