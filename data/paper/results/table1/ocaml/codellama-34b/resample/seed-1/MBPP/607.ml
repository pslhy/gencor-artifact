(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let rec aux i =
        match text.[i] with
        | c when c = pattern.[0] ->
            let (j, found) = aux (i+1) in
            if found then
                (c::j, (i, i+1))
            else
                ([c], (i, i+1))
        | _ -> ([], (-1, -1))
    in
    aux 0

