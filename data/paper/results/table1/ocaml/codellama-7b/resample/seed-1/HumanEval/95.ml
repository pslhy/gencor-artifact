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
| (k, _) :: _ ->
    let all_lower_case =
        List.exists (fun (k', v) -> k' <> k'@) dict
        && String.lowercase (k) = k
    in
    let all_upper_case =
        List.exists (fun (k', v) -> k' <> k'@) dict
        && String.uppercase (k) = k
    in
    all_lower_case || all_upper_case
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:46: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let lcase = ref false in
    let ucase = ref false in
    List.iter (fun (k, v) ->
        if !lcase && !ucase then ()
        else if String.lowercase k = k then lcase := true
        else if String.uppercase k = k then ucase := true
        else ()) dict;
    !lcase && !ucase
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:17: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let lcase = ref false in
    let ucase = ref false in
    List.iter (fun (k, v) ->
        if !lcase && !ucase then ()
        else if let lower_key = String.lowercase k in lower_key = lower_key then lcase := true
        else if let upper_key = String.uppercase k in upper_key = upper_key then ucase := true
        else ()) dict;
    !lcase && !ucase
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let lcase = ref false in
    let ucase = ref false in
    List.iter (fun (k, v) ->
        if !lcase && !ucase then ()
        else if let lower_key = String.lowercase k in lower_key = String.lowercase lower_key then lcase := true
        else if let upper_key = String.uppercase k in upper_key = String.uppercase upper_key then ucase := true
        else ()) dict;
    !lcase && !ucase
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool =
    let lcase = ref false in
    let ucase = ref false in
    List.iter (fun (k, v) ->
        if !lcase && !ucase then ()
        else if let lower_key = k in lower_key = String.lowercase k then lcase := true
        else if let upper_key = k in upper_key = String.uppercase k then ucase := true
        else ()) dict;
    !lcase && !ucase
;;

