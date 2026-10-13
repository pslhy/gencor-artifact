(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string =
    if String.contains second_string (String.get string 0) then
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_list |> remove_dirty_char second_string
    else
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_list |> remove_dirty_char second_string;;

let rec remove_dirty_char (string : string) (second_string : string) : string =
    match string with
    | "" -> ""
    | _ -> (remove_dirty_chars (String.sub string 0 1) second_string)^(remove_dirty_char (String.sub string 1 (String.length string - 1)) second_string);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:37: Unbound value "remove_dirty_char" *)
(*     Hint: Did you mean "remove_dirty_chars"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string =
    if String.contains second_string (String.get string 0) then
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_list |> remove_dirty_chars second_string
    else
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_list |> remove_dirty_chars second_string;;

let rec remove_dirty_chars (string : string) (second_string : string) : string =
    match string with
    | "" -> ""
    | _ -> (remove_dirty_chars (String.sub string 0 1) second_string)^(remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:19: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string =
    if String.contains second_string (String.get string 0) then
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_string |> remove_dirty_chars second_string
    else
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_string |> remove_dirty_chars second_string;;

let rec remove_dirty_chars (string : string) (second_string : string) : string =
    match string with
    | "" -> ""
    | _ -> (remove_dirty_chars (String.sub string 0 1) second_string)^(remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:19: Unbound value "String.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string =
    if String.contains second_string (String.get string 0) then
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_list |> remove_dirty_chars second_string
    else
        string |> String.to_list |> List.tl |> List.rev |> List.rev
               |> String.of_list |> remove_dirty_chars second_string;;

let rec remove_dirty_chars (string : string) (second_string : string) : string =
    match string with
    | "" -> ""
    | _ -> (remove_dirty_chars (String.sub string 0 1) second_string)^(remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string);;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:19: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_dirty_chars (string : string) (second_string : string) : string =
    if String.contains second_string (String.get string 0) then
        string |> String.to_seq |> Seq.tl |> Seq.rev |> Seq.rev
               |> String.of_seq |> remove_dirty_chars second_string
    else
        string |> String.to_seq |> Seq.tl |> Seq.rev |> Seq.rev
               |> String.of_seq |> remove_dirty_chars second_string;;

let rec remove_dirty_chars (string : string) (second_string : string) : string =
    match string with
    | "" -> ""
    | _ -> (remove_dirty_chars (String.sub string 0 1) second_string)^(remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string);;

