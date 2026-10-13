(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a non-empty list of integers lst. add the even elements that are at odd indices.. *)
(*     Examples: *)
(*     >>> add [4; 2; 6; 7] *)
(*     2 *)
let rec add (lst : int list) : int = 
    match lst with 
    | head :: tail -> 
        (match tail with 
        | [] -> head 
        | _ :: oddOrEven -> if oddOrEven = 0 then head + add tail else head)
    | [] -> 0

