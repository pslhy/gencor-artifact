(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
let rec check_str (string : string) : bool =
    let vowels = ["a"; "e"; "i"; "o"; "u"] in
    let sub_str = String.sub string 0 1 in
    if List.mem sub_str vowels then true else false

let str = "hello" in
let result = check_str str in
print_endline (string_of_bool result) ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
    let vowels = ["a"; "e"; "i"; "o"; "u"] in
    let sub_str = String.sub string 0 1 in
    if List.mem sub_str vowels then true else false

let str = "hello" in
let result = check_str str in
print_endline (string_of_bool result) ;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
    let vowels = ["a"; "e"; "i"; "o"; "u"] in
    let sub_str = String.sub string 0 1 in
    match sub_str with
    | _ -> List.mem sub_str vowels
    | _ :: tail -> check_str tail

let str = "hello" in
let result = check_str str in
print_endline (string_of_bool result) ;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:19: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
    let vowels = ["a"; "e"; "i"; "o"; "u"] in
    let sub_str = String.sub string 0 1 in
    match sub_str with
    | sub -> List.mem sub vowels
    | _ :: tail -> check_str tail

let str = "hello" in
let result = check_str str in
print_endline (string_of_bool result) ;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:19: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
    let vowels = ["a"; "e"; "i"; "o"; "u"] in
    let sub_str = String.sub string 0 1 in
    match sub_str with
    | sub when List.mem sub vowels -> true
    | _ :: tail -> check_str tail
    | _ -> false

let str = "hello" in
let result = check_str str in
print_endline (string_of_bool result) ;;

