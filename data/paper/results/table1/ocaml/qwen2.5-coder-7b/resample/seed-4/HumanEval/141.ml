(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function which takes a string representing a file's name, and returns *)
(*     'Yes' if the the file's name is valid, and returns 'No' otherwise. *)
(*     A file's name is considered to be valid if and only if all the following conditions *)
(*     are met: *)
(*     - There should not be more than three digits ('0'-'9') in the file's name. *)
(*     - The file's name contains exactly one dot '.' *)
(*     - The substring before the dot should not be empty, and it starts with a letter from *)
(*     the latin alphapet ('a'-'z' and 'A'-'Z'). *)
(*     - The substring after the dot should be one of these: ['txt', 'exe', 'dll'] *)
(*     Examples: *)
(*     >>> file_name_check "example.txt" *)
(*     "Yes" *)
(*     >>> file_name_check "1example.dll" *)
(*     "No" *)
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let has_dot = ref false in
  let valid_extension = ["txt"; "exe"; "dll"] in
  let rec check_chars acc = function
    | [] -> acc
    | c::cs -> 
        let acc = if Char.is_digit c then digit_count := !digit_count + 1; acc else acc in
        let acc = if c = '.' then has_dot := true; acc else acc in
        let acc = if !digit_count > 3 then "No" else acc in
        let acc = if c != '.' && !has_dot then "No" else acc in
        let acc = if c != '.' && not (Char.is_alpha c) then "No" else acc in
        check_chars (acc :: (if c = '.' then ["."] else [Char.escaped c])) cs
  in 
  match check_chars [] (String.to_list file_name) with
  | ["."]::_ -> "No"
  | _::_::ext::acc when List.mem ext valid_extension && String.length ext <= 3 -> "Yes"
  | _ -> "No"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let has_dot = ref false in
  let valid_extension = ["txt"; "exe"; "dll"] in
  let rec check_chars acc = function
    | [] -> acc
    | c::cs -> 
        acc <- if Char.is_digit c then digit_count := !digit_count + 1; acc else acc;
        acc <- if c = '.' then has_dot := true; acc else acc;
        acc <- if !digit_count > 3 then "No" else acc;
        acc <- if c != '.' && !has_dot then "No" else acc;
        acc <- if c != '.' && not (Char.is_alpha c) then "No" else acc;
        check_chars (acc :: (if c = '.' then ["."] else [Char.escaped c])) cs
  in 
  match check_chars "" (String.to_list file_name) with
  | ["."]::_ -> "No"
  | _::_::ext::acc when List.mem ext valid_extension && String.length ext <= 3 -> "Yes"
  | _ -> "No"

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:77: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let has_dot = ref false in
  let valid_extension = ["txt"; "exe"; "dll"] in
  let rec check_chars acc = function
    | [] -> acc
    | c::cs -> 
        let acc = if Char.is_digit c then digit_count := !digit_count + 1; acc else acc in
        let acc = if c = '.' then has_dot := true; acc else acc in
        let acc = if !digit_count > 3 then "No" else acc in
        let acc = if c != '.' && !has_dot then "No" else acc in
        let acc = if c != '.' && not (Char.is_alpha c) then "No" else acc in
        check_chars (acc ^ (if c = '.' then "." else String.make 1 c)) cs
  in 
  match check_chars "" (String.to_list file_name) with
  | ["."]::_ -> "No"
  | _::_::ext::acc when List.mem ext valid_extension && String.length ext <= 3 -> "Yes"
  | _ -> "No"

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let has_dot = ref false in
  let valid_extension = ["txt"; "exe"; "dll"] in
  let rec check_chars acc = function
    | [] -> acc
    | c::cs -> 
        let acc = if Char.is_digit c then digit_count := !digit_count + 1; acc else acc in
        let acc = if c = '.' then has_dot := true; acc else acc in
        let acc = if !digit_count > 3 then "No" else acc in
        let acc = if c != '.' && !has_dot then "No" else acc in
        let acc = if c != '.' && not (Char.is_alpha c) then "No" else acc in
        check_chars (acc ^ (if c = '.' then "." else String.make 1 c)) cs
  in 
  match check_chars "" (String.to_list file_name) with
  | ["."]::_ -> "No"
  | ext::[_] when List.mem ext valid_extension && String.length ext <= 3 -> "Yes"
  | _ -> "No"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let has_dot = ref false in
  let valid_extension = ["txt"; "exe"; "dll"] in
  let rec check_chars acc = function
    | [] -> acc
    | c::cs -> 
        let acc = if Char.is_digit c then digit_count := !digit_count + 1; acc else acc in
        let acc = if c = '.' then has_dot := true; acc else acc in
        let acc = if !digit_count > 3 then "No" else acc in
        let acc = if c != '.' && !has_dot then "No" else acc in
        let acc = if c != '.' && not (Char.is_alpha c) then "No" else acc in
        check_chars (acc ^ (if c = '.' then "." else String.make 1 c)) cs
  in 
  match check_chars "" (String.to_list file_name) with
  | [] -> "No"
  | _::_::ext::_acc when List.mem ext valid_extension && String.length ext <= 3 -> "Yes"
  | _ -> "No"

