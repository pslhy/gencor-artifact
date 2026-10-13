let rec string_to_list (string : string) : string list = 
  let rec split acc rest = 
    match Rest.find_char ' ' rest with
    | -1 -> [String.sub rest 0 (String.length rest) :: acc]
    | i -> split (String.sub rest 0 i :: acc) (String.sub rest (i + 1) ((String.length rest) - i - 1))
  in 
  List.rev (split [] string)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
