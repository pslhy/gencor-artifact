let rec find_substring (str1 : string list) (sub_str : string) : bool =
  match str1 with
  | [] -> false
  | h :: t -> if h = sub_str then true else find_substring t sub_str


let is_substring (str_list : 'a list) (sub_str : string) : bool =
  find_substring (List.map ~f:string_of_a str_list) sub_str


is_substring ["apple"; "banana"; "orange"] "apple"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string is present as a substring in a given list of string values. *)
