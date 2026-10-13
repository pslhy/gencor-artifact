let rec find_closest_elements (numbers : float list) :  float * float = 
    let rec aux min max nums = 
        match nums with 
        | [] -> (min, max)
        | x :: xs -> 
            if x < min then 
                let min, max = x, min in 
                aux min max xs 
            else if x > max then 
                let min, max = max, x in 
                aux min max xs 
            else 
                aux min max xs 
    in 
    match numbers with 
    | x :: xs -> aux x x xs 
    | [] -> failwith "List length must be at least two."

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
