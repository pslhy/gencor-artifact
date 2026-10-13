(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
let rec string_to_list (string : string) : string list = 
    match String.contains string ' ' with
    | true -> let (prefix, suffix) = String.chop_prefix_v2 string ' '
              prefix :: string_to_list suffix
    | false -> [string]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_list (string : string) : string list = 
    match string with
    | "" -> []
    | _ -> string.[0] :: string_to_list (String.sub string 1 (String.length string - 1))

