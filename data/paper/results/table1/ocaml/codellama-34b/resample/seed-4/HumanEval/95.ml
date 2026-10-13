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
    | (key, _) :: tail ->
        if key = String.lowercase key || key = String.uppercase key then
            check_dict_case tail
        else
            false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:18: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    match dict with
    | [] -> false
    | (key, _) :: tail ->
        if key = lowercase key || key = uppercase key then
            check_dict_case tail
        else
            false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:18: Unbound value "lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let rec lowercase = String.map (fun c ->Char.lowercase c) in
    match dict with
    | [] -> false
    | (key, _) :: tail ->
        if key = lowercase key || key = String.uppercase key then
            check_dict_case tail
        else
            false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:45: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let lowercase s = String.map (fun c -> Char.lowercase c) s in
    match dict with
    | [] -> false
    | (key, _) :: tail ->
        if key = lowercase key || key = String.uppercase key then
            check_dict_case tail
        else
            false

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:44: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let lowercase = Str.global_replace (Str.regexp "[A-Z]") "" in
    match dict with
    | [] -> false
    | (key, _) :: tail ->
        if key = lowercase key || key = String.uppercase key then
            check_dict_case tail
        else
            false

