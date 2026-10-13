
let rec remove_odd (l : int list) : int list = 
    match l with 
    | head :: tail -> 
            (match head mod 2 with 
            | 0 -> head :: (remove_odd tail) 
            | _ -> (remove_odd tail)) 
    | [] -> [];;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove odd numbers from a given list. *)
