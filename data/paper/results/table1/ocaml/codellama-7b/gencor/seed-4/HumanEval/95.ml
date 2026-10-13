
let rec check_dict_case (dict : (string * string) list) : bool = 
    match dict with 
    | [] -> false
    | (key, value) :: tail -> 
        let lower_case = 
            let c = key.[0] in 
            (c >= 'a' && c <= 'z') || c == 'A' 
        in 
        let upper_case = 
            let c = key.[0] in 
            (c >= 'A' && c <= 'Z') || c == 'a' 
        in 
        if lower_case || upper_case then 
            check_dict_case tail 
        else 
            false 

let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^ k = String.lowercase_ascii k || k ^ k = String.uppercase_ascii k) keys

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
