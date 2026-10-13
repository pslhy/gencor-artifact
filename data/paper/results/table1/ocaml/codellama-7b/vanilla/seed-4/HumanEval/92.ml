let rec any_int (x : float) (y : float) (z : float) : bool = 
    (* Check if x, y and z are integers *)
    let (x' : int) = int_of_float x in (* TypeError in case of non-integer x *)
    let (y' : int) = int_of_float y in (* TypeError in case of non-integer y *)
    let (z' : int) = int_of_float z in (* TypeError in case of non-integer z *)

    (* Check if x + y = z *)
    if x' + y' = z' then
        true (* If x + y = z, return true *)
    else
        false (* If x + y != z, return false *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes 3 numbers. *)
(*     Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers. *)
(*     Returns false in any other cases. *)
(*     Examples *)
(*     >>> any_int 5 2 7 *)
(*     true *)
(*     >>> any_int 3 2 2 *)
(*     false *)
(*     >>> any_int 3 (-2) 1 *)
(*     true *)
(*     >>> any_int 3.6 -2.2 2 *)
(*     false *)
