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
match file_name with
| "" -> "No"
| s when String.length s > 3 -> "No"
| s when String.contains s '.' ->
let prefix, suffix = String.split_at (String.index s '.') in
if (String.for_all (fun c -> Char.is_alphanum c || c = '.') prefix) &&
(String.for_all (fun c -> Char.is_alphanum c || c = '.') suffix) &&
(suffix = "txt" || suffix = "exe" || suffix = "dll") then "Yes" else "No"
| _ -> "No"
let () =
print_endline (file_name_check "example.txt")
print_endline (file_name_check "1example.dll")
print_endline (file_name_check "1example")

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:22: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string =
  match file_name with
  | "" -> "No"
  | s when String.length s > 3 -> "No"
  | s when String.contains s '.' ->
    let prefix, suffix = String.split_at (String.index s '.') in
    if String.for_all (fun c -> Char.is_alphanum c || c = '.') prefix &&
                                String.for_all (fun c -> Char.is_alphanum c || c = '.') suffix &&
                                suffix = "txt" || suffix = "exe" || suffix = "dll" then "Yes" else "No"
  | _ -> "No"

let () =
  let file_name = read_file_name () in
  print_endline (file_name_check file_name)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string =
  match file_name with
  | "" -> "No"
  | s when String.length s > 3 -> "No"
  | s when String.contains s '.' ->
    let prefix, suffix = String.split_at (String.index s '.') in
    if String.for_all (fun c -> Char.is_alphanum c || c = '.') prefix &&
       String.for_all (fun c -> Char.is_alphanum c || c = '.') suffix &&
       suffix = "txt" || suffix = "exe" || suffix = "dll" then "Yes" else "No"
  | _ -> "No"

let () =
  let file_name = read_file_name () in
  print_endline (file_name_check file_name)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string =
  match file_name with
  | "" -> "No"
  | s when String.length s > 3 -> "No"
  | s when String.contains s '.' ->
    let prefix, suffix = String.split_on_char '.' s in
    if String.for_all (fun c -> Char.is_alphanum c || c = '.') prefix &&
       String.for_all (fun c -> Char.is_alphanum c || c = '.') suffix &&
       suffix = "txt" || suffix = "exe" || suffix = "dll" then "Yes" else "No"
  | _ -> "No"

let () =
  let file_name = read_file_name () in
  print_endline (file_name_check file_name)

