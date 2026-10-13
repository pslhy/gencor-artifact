(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return sorted unique elements in a list *)
(*     >>> unique [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [0; 2; 3; 5; 9; 123] *)
let rec unique (l : int list) : int list = 
    let rec helper seen rest in 
        match rest with
        | [] -> List.rev seen
        | x::xs -> if List.mem x seen then helper seen xs else helper (x::seen) xs 
    in 
    helper [] (List.sort compare l)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique (l : int list) : int list = 
    let rec helper seen rest = 
        match rest with
        | [] -> List.rev seen
        | x::xs -> if List.mem x seen then helper seen xs else helper (x::seen) xs 
    in 
    helper [] (List.sort compare l)

