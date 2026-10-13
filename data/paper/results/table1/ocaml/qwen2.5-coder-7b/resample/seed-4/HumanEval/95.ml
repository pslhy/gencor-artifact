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
  match dict with
  | [] -> false
  | (key, _) :: rest ->
      let is_lower = String.for_all (fun c -> Char.is_lowercase c) key in
      let is_upper = String.for_all (fun c -> Char.is_uppercase c) key in
      if is_lower || is_upper then check_dict_case rest else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:47: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool = 
  let from_char f =
    Char.code (Char.uppercase_ascii f) = Char.code f ||
    Char.code (Char.lowercase_ascii f) = Char.code f in
  match dict with
  | [] -> false
  | (key, _) :: rest ->
      let is_lower = String.for_all (fun c -> from_char (Char.lowercase_ascii c)) key in
      let is_upper = String.for_all (fun c -> from_char (Char.uppercase_ascii c)) key in
      if is_lower || is_upper then check_dict_case rest else false

