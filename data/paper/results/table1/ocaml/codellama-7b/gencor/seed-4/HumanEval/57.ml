
let rec monotonic (l : int list) : bool = 
    match l with 
    | head :: [] -> 
    true
    | head :: tail -> 
    let is_increasing = 
        if head < head then 
            monotonic tail 
        else 
            false
        in 
    
    let is_decreasing = 
        if head > head then 
            monotonic tail 
        else 
            false
        in 
    
    is_increasing || is_decreasing

let monotonic l = 
    match l with 
    | [] -> 
    true
    | head :: tail -> 
    let is_increasing = 
        if head < head then 
            monotonic tail 
        else 
            false
        in 
    
    let is_decreasing = 
        if head > head then 
            monotonic tail 
        else 
            false
        in 
    
    is_increasing || is_decreasing

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true is list elements are monotonically increasing or decreasing. *)
(*     >>> monotonic [1; 2; 4; 20] *)
(*     true *)
(*     >>> monotonic [1; 20; 4; 10] *)
(*     false *)
(*     >>> monotonic [4; 1; 0; (-10)] *)
(*     true *)
