(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
let rec first_repeated_char (str1 : string) : string option = 
    (* base case: if the string is empty, there are no repeated characters *)
    if str1 = "" then None else
    (* if the first character in the string has no repeated occurences, recurse with the remaining string *)
    if List.length (String.split_on_char (Str.get 0 str1) str1) = 1 then first_repeated_char (Str.substr 1 (String.length str1 - 1) str1) else
    (* if the first character in the string has a repeated occurence, return it *)
    Some (Str.get 0 str1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:43: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_repeated_char (str1 : string) : string option =
  if str1 = "" then
    None
  else
    let current_char = String.get str1 0 in
    let remaining_str = String.sub str1 1 (String.length str1 - 1) in
    match first_repeated_char remaining_str with
    | Some c when c = current_char -> Some current_char
    | _ -> None

