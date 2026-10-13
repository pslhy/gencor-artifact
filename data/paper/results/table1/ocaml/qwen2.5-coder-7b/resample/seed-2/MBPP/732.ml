(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
let rec replace_specialchar (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | ' ' :: t | ',' :: t | '.' :: t -> helper t (result ^ ":")
        | h :: t -> helper t (result ^ (String.make 1 h))
    in
    helper (String.to_list text) ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:13: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_specialchar (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | ' ' :: t | ',' :: t | '.' :: t -> helper t (result ^ ":")
        | h :: t -> helper t (result ^ (String.make 1 h))
    in
    helper (List.of_seq (String.to_seq text)) ""

