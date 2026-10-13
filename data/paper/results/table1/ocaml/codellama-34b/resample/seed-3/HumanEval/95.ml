(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given an association list, return true if all keys are strings in lower *)
(*     case or all keys are strings in upper case, else return false. *)
(*     The function should return false is the given association list is empty. *)
(*     Examples: *)
(*     >>> check_dict_case [("a", "apple"); ("b", "banana")] *)
(*     true *)
(*     >>> check_dict_case [("a", "apple"); ("A", "banana"); ("B", "banana")] *)
(*     false *)
(*     >>> check_dict_case [("a", "apple"); (8, "banana"); ("a", "apple")] *)
(*     false *)
(*     >>> check_dict_case [("Name", "John"); ("Age", "36"); ("City", "Houston")] *)
(*     false *)
(*     >>> check_dict_case [("STATE", "NC"); ("ZIP", "12345")] *)
(*     true *)
let rec check_dict_case (dict : (string * string) list) : bool =
  if dict = [] then false
  else
    let (key, _) = List.hd dict in
    if not (String.is_lowercase key || String.is_uppercase key) then false
    else check_dict_case (List.tl dict)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:13: Unbound value "String.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
  match dict with
  | [] -> false
  | (key, _) :: tl ->
    if String.lowercase_ascii key = key || String.uppercase_ascii key = key then
      check_dict_case tl
    else
      false

