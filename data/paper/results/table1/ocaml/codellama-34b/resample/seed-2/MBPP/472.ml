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
    | [] | [_] -> false
    | h1 :: h2 :: t -> if h2 = h1 + 1 then checkConsecutive (h2 :: t) else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:44: Unbound value "checkConsecutive" *)
(*     Hint: Did you mean "check_Consecutive"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_Consecutive (l : int list) : bool =
    match l with
    | [] | [_] -> false
    | h1 :: h2 :: t -> if h2 = h1 + 1 then check_Consecutive (h2 :: t) else false

