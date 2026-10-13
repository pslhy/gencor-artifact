
let rec find_closest_elements (numbers : float list) :  float * float = 
    (* helper function that compares two numbers and returns the 
    smaller and larger one *)
    let compare x y : float * float =
        
         if x < y then (x, y) else (y, x)

    (* base case, where the list has only one element *)
    in 
    match numbers with 
        | [a] -> (a, a)
        (* helper function that finds the closest pair of numbers, 
        by iterating over the rest of the list and applying the 
        helper function recursively *)
        | a :: b :: rest -> 
            let bst, best = find_closest_elements (b :: rest)
            in
            let (a', b') = compare a b
            in
            if b' - a' < bst - best then (a', b') else (bst, best)

(* driver function that applies the helper function to the input list *)
let find_closest_elements numbers = 
    match numbers with
        | [] -> failwith "List is empty"
        | a :: rest ->
            let a', b' = find_closest_elements rest
            in (a', b')

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a supplied list of numbers (of length at least two) select and return two that are the closest to each *)
(*     other and return them in order (smaller number, larger number). *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] *)
(*     (2.0, 2.2) *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] *)
(*     (2.0, 2.0) *)
