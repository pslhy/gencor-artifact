(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
match String.index_opt text pattern with
| Some(index) ->
    let pre_sub = String. sub text 0 index in
    let substr = String. sub text index (String.length pattern) in
    (pre_sub, index, Some(index + String.length pattern))
| None -> (text, String.length text, None)
in

let occurance_substring text =
match text with
| "" -> (text, String.length text, None)
| _ -> occurance_substring text
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
match String.index_opt text pattern with
| Some(index) ->
    let pre_sub = String. sub text 0 index in
    let substr = String. sub text index (String.length pattern) in
    (pre_sub, index, Some(index + String.length pattern))
| None -> (text, String.length text, None)
in

let occurance_substring text =
match text with
| "" -> (text, String.length text, None)
| _ -> occurance_substring text
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  match String.index_opt text pattern with
  | Some(index) ->
    let pre_sub = String.sub text 0 index in
    let substr = String.sub text index (String.length pattern) in
    (pre_sub, index, Some(index + String.length pattern))
  | None -> (text, String.length text, None)
in

let occurance_substring text =
  match text with
  | "" -> (text, String.length text, None)
  | _ -> occurance_substring text
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  match String.index_opt text pattern with
  | Some(index) ->
    let pre_sub = String.sub text 0 index in
    let substr = String.sub text index (String.length pattern) in
    (pre_sub, index, Some(index + String.length pattern))
  | None -> (text, String.length text, None)
in

let occurance_substring text =
  match text with
  | "" -> (text, String.length text, None)
  | _ -> occurance_substring text
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if String.length text = 0 then (text, 0, None)
  else if String.sub text 0 1 = pattern then
    let (prefix, index, _) = occurance_substring (String.sub text 1 (String.length text - 1)) pattern in
    (prefix, index, Some index)
  else
    let (prefix, index, _) = occurance_substring (String.sub text 1 (String.length text - 1)) pattern in
    (prefix, index, Some index)
in

let occurance_substring text =
  match text with
  | "" -> (text, String.length text, None)
  | _ -> occurance_substring text
;;

