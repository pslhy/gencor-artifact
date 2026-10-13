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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
