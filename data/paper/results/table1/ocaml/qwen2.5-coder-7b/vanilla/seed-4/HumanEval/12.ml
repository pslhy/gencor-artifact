let rec longest (strings : string list) : string option = 
  match strings with
  | [] -> Some None
  | [s] -> Some (Some s)
  | s1 :: s2 :: rest ->
    match longest (s2 :: rest) with
    | Some None -> Some (Some s1)
    | Some (Some s2) ->
      if String.length s1 >= String.length s2 then Some (Some s1) else Some (Some s2)


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
