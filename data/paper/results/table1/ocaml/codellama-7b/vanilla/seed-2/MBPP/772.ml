let rec remove_length (test_str : string) (k : int) : string =
    match test_str with
    | [] -> []
    | h::t -> if String.length (List.hd (Str.split (h) (" "))) = k then h :: remove_length t k
             else remove_length t k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
