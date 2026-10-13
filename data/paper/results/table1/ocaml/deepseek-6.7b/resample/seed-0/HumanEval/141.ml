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
    let num_digits = String.length (String.filter (fun c -> c >= '0' && c <= '9') file_name) in
    if num_digits > 3 then "No"
    else match String.index_opt file_name '.' with
         | None -> "No"
         | Some dot_index ->
           let first_part = String.sub file_name 0 dot_index in
           let last_part = String.sub file_name (dot_index + 1) (String.length file_name - dot_index - 1) in
           if String.length first_part = 0 || not (String.length first_part > 0 && Char.is_lowercase first_part.[0])
           then "No"
           else if List.mem last_part ["txt"; "exe"; "dll"]
           then "Yes"
           else "No"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:37: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec file_name_check (file_name : string) : string =
    let num_digits = String.length (String.init (String.length file_name) (fun i -> if Char.code file_name.[i] >= Char.code '0' && Char.code file_name.[i] <= Char.code '9' then Some file_name.[i] else None) |> String.concat "") in
    if int_of_string num_digits > 3 then "No"
    else match String.index_opt file_name '.' with
         | None -> "No"
         | Some dot_index ->
           let first_part = String.sub file_name 0 dot_index in
           let last_part = String.sub file_name (dot_index + 1) (String.length file_name - dot_index - 1) in
           if String.length first_part = 0 || not (String.length first_part > 0 && Char.is_lowercase first_part.[0])
           then "No"
           else if List.mem last_part ["txt"; "exe"; "dll"]
           then "Yes"
           else "No";;

