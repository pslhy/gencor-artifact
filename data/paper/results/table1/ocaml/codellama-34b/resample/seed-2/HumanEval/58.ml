(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return sorted unique common elements for two lists. *)
(*     >>> common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121] *)
(*     [1; 5; 653] *)
(*     >>> common [5; 3; 2; 8] [3; 2] *)
(*     [2; 3] *)
let rec common (l1 : int list) (l2 : int list) : int list =
    match l1, l2 with
    | [], [] -> []
    | h1::t1, h2::t2 -> if h1 = h2 then h1 :: common t1 t2
    | h1::t1, [] -> if List.mem h1 l2 then h1 :: common t1 []
    | [], h2::t2 -> if List.mem h2 l1 then h2 :: common [] t2
    | _ -> common t1 t2

