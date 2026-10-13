(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Out of list of strings, return the longest one. Return the first one in case of multiple *)
(*     strings of the same length. Return None in case the input list is empty. *)
(*     >>> longest [] *)
(*     Some(None) *)
(*     >>> longest ["a"; "b"; "c"] *)
(*     Some("a") *)
(*     >>> longest ["a"; "bb"; "ccc"] *)
(*     Some("ccc") *)
let rec longest (strings : string list) : string option =
    match strings with
    | [] -> None
    | hd :: tl ->
        let length = String.length hd in
        let result = longest tl in
        match result with
        | Some(str) ->
            if length > String.length str then
                Some(hd)
            else
                result
        | None -> Some(hd)

