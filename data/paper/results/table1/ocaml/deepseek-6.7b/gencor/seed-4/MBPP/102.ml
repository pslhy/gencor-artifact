
let rec snake_to_camel (word : string) : string =
  match String.index_opt word '_' with
  | None -> word
  | Some i -> 
    let first_part = String.sub word 0 i in
    let rest = String.sub word (i+1) (String.length word - i -1) in
    String.lowercase_ascii (first_part ^ (String.capitalize_ascii (snake_to_camel (String.sub rest 0 (String.length rest)))))
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
