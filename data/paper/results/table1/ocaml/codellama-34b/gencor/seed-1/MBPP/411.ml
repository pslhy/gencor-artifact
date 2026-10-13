
let rec snake_to_camel (word : string) : string =
    let capitalize (s : string) =
        let first = String.sub s 0 1 in
        let rest = String.sub s 1 (String.length s - 1) in
        String.concat "" [ String.uppercase_ascii first; rest ]
    in
    if String.contains word '_' then
        let parts = String.split_on_char '_' word in
        let parts' = List.map capitalize parts in
        String.concat "" parts'
    else
        word

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
