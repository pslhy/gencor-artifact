let rec max_aggregate (stdata :  (string * int) list) :  string * int = 
    let rec find_max (stdata : (string * int) list) max_value (max_name : string) : string * int =
        match stdata with 
        | [] -> max_name, max_value 
        | (name,newvalue)::tail -> 
            if newvalue > max_value then 
                find_max tail newvalue name
            else 
                find_max tail max_value max_name
    in 
    find_max stdata (-1) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
