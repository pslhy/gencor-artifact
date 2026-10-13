let rec check_dict_case (dict : (string * string) list) : bool =
  match dict with
  | [] -> false
  | (k, v) :: t when not (is_lower k) && not (is_upper k) -> false
  | (k, v) :: t -> check_dict_case t

and is_lower (str : string) : bool =
  String.for_all (fun c -> 'a' <= c && c <= 'z') str

and is_upper (str : string) : bool =
  String.for_all (fun c -> 'A' <= c && c <= 'Z') str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
