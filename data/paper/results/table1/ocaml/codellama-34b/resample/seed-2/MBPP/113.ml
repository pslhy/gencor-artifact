(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
let rec check_integer (text : string) : bool =
    match text with
    | [] -> false
    | _ ->
        let head = String.sub text 0 1 in
        let tail = String.sub text 1 (String.length text - 1) in
        if head = "0" && tail = "" then
            true
        else
            check_integer tail

