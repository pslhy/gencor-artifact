
let rec any_int (x : float) (y : float) (z : float) : bool =
    if x = y +. z || y = x +. z || z = x +. y then
        (int_of_float x) = x && (int_of_float y) = y && (int_of_float z) = z
    else
        false

let rec any_int_ex (x : float) (y : float) (z : float) : bool =
    if x = y +. z || y = x +. z || z = x +. y then
        (mod_float x 1.0 = 0.0) && (mod_float y 1.0 = 0.0) && (mod_float z 1.0 = 0.0)
    else
        false

(* Test cases *)
let test1 = any_int 5.0 2.0 7.0 (* true *)
let test2 = any_int 3.0 2.0 2.0 (* false *)
let test3 = any_int 3.0 (-2.0) 1.0 (* true *)
let test4 = any_int 3.6 -2.2 2.0 (* false *)
let test5 = any_int 3 2 2 (* true *)
let test6 = any_int 3 (-2) 1 (* true *)
let test7 = any_int 3.6 -2.2 2 (* false *)

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
