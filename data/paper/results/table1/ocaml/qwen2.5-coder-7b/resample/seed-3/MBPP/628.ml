(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
let rec replace_spaces (string : string) : string = 
  let rec helper (chars : char list) : string = 
    match chars with
    | [] -> ""
    | ' ' :: rest -> "%20" ^ helper rest
    | c :: rest -> string_of_char c ^ helper rest
  in helper (String.to_list string)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "string_of_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (string : string) : string = 
  let rec helper (chars : char list) : string = 
    match chars with
    | [] -> ""
    | ' ' :: rest -> "%20" ^ helper rest
    | c :: rest -> String.make 1 c ^ helper rest
  in helper (String.to_list string)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:14: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (string : string) : string = 
  let rec helper (index : int) (length : int) (result : string) : string = 
    if index = length then 
      result 
    else if string.[index] = ' ' then 
      helper (index + 1) length (result ^ "%20")
    else 
      helper (index + 1) length (result ^ (String.make 1 string.[index]))
  in helper 0 (String.length string) ""

