(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
let rec string_to_list (string : string) : string list = 
  let rec split acc rest = 
    match Rest.find_char ' ' rest with
    | -1 -> [String.sub rest 0 (String.length rest) :: acc]
    | i -> split (String.sub rest 0 i :: acc) (String.sub rest (i + 1) ((String.length rest) - i - 1))
  in 
  List.rev (split [] string)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:11: Unbound module "Rest" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_list (string : string) : string list = 
  let rec split acc rest = 
    match String.index_opt ' ' rest with
    | None -> [String.sub rest 0 (String.length rest) :: acc]
    | Some i -> split (String.sub rest 0 i :: acc) (String.sub rest (i + 1) ((String.length rest) - i - 1))
  in 
  List.rev (split [] string)

