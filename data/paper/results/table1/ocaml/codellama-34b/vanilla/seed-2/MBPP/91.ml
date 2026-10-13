let rec find_substring (str1 : string list) (sub_str : string) : bool =
    match str1 with
    | [] -> false
    | str2::rest -> if String.contains str2 sub_str then true else find_substring rest sub_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string is present as a substring in a given list of string values. *)
