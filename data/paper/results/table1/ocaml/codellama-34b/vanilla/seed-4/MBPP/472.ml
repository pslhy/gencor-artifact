let rec check_Consecutive (l : int list) : bool = 
    (* base case: empty list with only one element *)
    let rec check_Consecutive_single (l : int list) : bool = 
        match l with 
        | [] -> false
        | [x] -> true
        | _::[] -> true
        | x::_::[] -> if x + 1 = l 
        then true
        else false
    in
    (* recursive case: list of arbitrary length *)
    match l with
    | [] -> true
    | _ -> check_Consecutive_single l


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)
