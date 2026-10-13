let rec check_value (dict : (string * int) list) (n : int) : bool =
    match dict with
    | [] -> true
    | (key, value) :: tail -> if value = n then check_value tail n else false

let check_all_same (dict : (string * int) list) : bool =
    match dict with
    | [] -> false
    | (key, value) :: tail -> check_value tail value


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if all values are same in an association list. *)
