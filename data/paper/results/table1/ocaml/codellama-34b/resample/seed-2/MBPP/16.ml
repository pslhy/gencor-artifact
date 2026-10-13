(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
let rec text_lowercase_underscore (text : string) : bool =
    match text with
    | [] -> false
    | _ :: xs ->
        let contains_underscore = List.exists (fun c -> c = '_') xs in
        if contains_underscore then
            let after_underscore = List.tl xs in
            if List.for_all (fun c -> Char.is_lowercase c) after_underscore then
                true
            else
                false
        else
            false

