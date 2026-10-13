(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
let rec max_aggregate (stdata :  (string * int) list) :  string * int = 
    match stdata  with
    | [ ] -> ("", -1)
    | [ (key, value) ] -> (key, value)
    | (key1, value1) :: (key2, value2) :: tail -> 
        let max_value = max value1 value2  in
        let (max_key, max_val) = 
           if max_value = value1 
           then (key1,value1)
           else (key2, value2)  in
 
        let (smaller_key, smaller_val)  = max_aggregate tail  in
        
        if smaller_val < max_val 
        then (max_key, max_val)
        else smaller_key, smaller_val


