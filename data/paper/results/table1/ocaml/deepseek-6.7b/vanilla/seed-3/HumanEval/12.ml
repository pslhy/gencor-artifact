let rec longest (strings : string list) : string option =
  match strings with
  | [] -> None
  | x :: xs -> 
        let rec helper (curr_longest : string) (remaining : string list) : string =
            match remaining with
            | [] -> curr_longest
            | y :: ys -> if String.length y > String.length curr_longest then helper y ys else helper curr_longest ys
        in Some (helper x xs)


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
