let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
    let rec findMin lst min_key min_val = 
        match lst with
        | [] -> (min_key, min_val)
        | (key, value)::rest ->
            if value < min_val then 
                findMin rest key value
            else
                findMin rest min_key min_val
    in
    let rec removeFirstOccurence lst to_remove = 
        match lst with
        | [] -> []
        | (key, value)::rest ->
            if not (to_remove = (key, value)) then (key, value)::removeFirstOccurence rest to_remove
            else removeFirstOccurence rest to_remove
    in
    match dict1 with
    | [] -> []
    | _ -> 
        let (min_key, min_val) = findMin dict1 "" (max_int) in
        (min_key, min_val) :: sort_counter (removeFirstOccurence dict1 (min_key, min_val))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
