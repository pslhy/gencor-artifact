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
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.lowercase k) = 0) 
                 keys 

(* alternate solution *)
let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.uppercase k) = 0) 
                 keys 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:41: Unbound value "(^|)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool = 
    match dict with 
    | [] -> false
    | (key, value) :: tail -> 
        let lower_case = key.[0] <= 'z' && key.[0] >= 'a' in 
        let upper_case = key.[0] <= 'Z' && key.[0] >= 'A' in 
        if lower_case then 
            check_dict_case tail 
        else if upper_case then 
            check_dict_case tail 
        else 
            false 

let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.lowercase k) = 0) 
                 keys 

(* alternate solution *)
let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.uppercase k) = 0) 
                 keys 

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:41: Unbound value "(^|)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool = 
    match dict with 
    | [] -> false
    | (key, value) :: tail -> 
        check_dict_case tail &&
        (if key.[0] <= 'z' && key.[0] >= 'a' then 
            value = String.lowercase value 
        else 
            value = String.uppercase value)

let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.lowercase k) = 0) 
                 keys 

(* alternate solution *)
let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.uppercase k) = 0) 
                 keys 

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:21: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool = 
    match dict with 
    | [] -> false
    | (key, value) :: tail -> 
        check_dict_case tail &&
        ((key.[0] <= 'z' && key.[0] >= 'a') || (key.[0] <= 'Z' && key.[0] >= 'A')) &&
        (value = String.uncapitalize value)

let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.uncapitalize k) = 0) 
                 keys 

(* alternate solution *)
let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.uppercase k) = 0) 
                 keys 

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:18: Unbound value "String.uncapitalize" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_dict_case (dict : (string * string) list) : bool = 
    match dict with 
    | [] -> false
    | (key, value) :: tail -> 
        check_dict_case tail &&
        (key.[0] <= 'z' && key.[0] >= 'a' || key.[0] <= 'Z' && key.[0] >= 'A') &&
        value = String.uppercase value

let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.uppercase k) = 0) 
                 keys 

(* alternate solution *)
let check_dict_case dict = 
    let keys = List.map fst dict in 
    List.for_all (fun (k : string) -> k ^| 
                 String.length k >= 1 && String.length k <= 2 ^^ 
                 String.compare k (String.lowercase k) = 0) 
                 keys 

