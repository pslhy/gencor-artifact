let rec longest (strings : string list) : string option =
  match strings with
  | [] -> None
  | string :: rest ->
    let len = String.length string in
    let shorter_strings = longest rest in
    match shorter_strings with
    | Some(other_string) ->
      if len > String.length other_string then
        Some(string)
      else
        shorter_strings
    | None ->
      Some(string)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Out of list of strings, return the longest one. Return the first one in case of multiple *)
(*     strings of the same length. Return None in case the input list is empty. *)
(*     >>> longest [] *)
(*     Some(None) *)
(*     >>> longest ["a"; "b"; "c"] *)
(*     Some("a") *)
(*     >>> longest ["a"; "bb"; "ccc"] *)
(*     Some("ccc") *)
