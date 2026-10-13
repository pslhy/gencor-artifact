
let rec add (lst : int list) : int = 
    match lst with 
    | head :: tail -> 
        (match head with 
            | x when x mod 2 = 0 && x - 2 mod 2 = 0 -> x + add tail 
            | _ -> add tail)
    | _ -> failwith "Invalid list"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers lst. add the even elements that are at odd indices.. *)
(*     Examples: *)
(*     >>> add [4; 2; 6; 7] *)
(*     2 *)
