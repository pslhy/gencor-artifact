
let rec remove_length (test_str : string) (k : int) : string =
    let split_str = String.split_on_char ' ' test_str in
    List.fold_left (fun acc x -> if String.length x <> k then x ^ " " ^ acc else acc) "" split_str
in
remove_length "Hello world this is lorem" 4;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
