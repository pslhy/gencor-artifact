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
    | [], _ -> []
    | _, [] -> []
    | x1 :: xs1, x2 :: xs2 ->
        if x1 = x2 then
            x1 :: common xs1 xs2
        else if x1 < x2 then
            common xs1 l2
        else
            common l1 xs2

