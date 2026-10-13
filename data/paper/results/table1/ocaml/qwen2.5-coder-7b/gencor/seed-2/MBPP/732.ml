
let rec replace_specialchar (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | ' ' :: t | ',' :: t | '.' :: t -> helper t (result ^ ":")
        | h :: t -> helper t (result ^ (String.make 1 h))
    in
    helper (String.to_seq text) ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
