(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)
let rec check_Consecutive (l : int list) : bool =
    match l with
    | [] -> true
    | x1 :: x2 :: tl -> if x1 + 1 = x2 then check_Consecutive (x2 :: tl) else false
    | _ :: [] -> true

