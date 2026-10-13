
let rec check_dict_case (dict : (string * string) list) : bool =
  match dict with
  |[] -> false
  |(k, v) :: t -> if (k = String.uppercase_ascii k && List.for_all (fun (k1, v1) -> k1 = String.lowercase_ascii k1) t) 
                    || (k = String.lowercase_ascii k && List.for_all (fun (k1, v1) -> k1 = String.uppercase_ascii k1) t)
		    then true
                    else false

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
