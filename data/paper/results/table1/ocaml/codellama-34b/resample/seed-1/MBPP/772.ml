(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
let rec remove_length (test_str : string) (k : int) : string =
    let str_list = String.split_on_char ' ' test_str in
    let filtered_list = List.filter (fun (x : string) -> String.length x <> k) str_list in
    String.concat " " filtered_list

