let rec longest (strings : string list) : string option =
    match strings with
    | [] -> None
    | h::t -> Some(List.fold_left (fun max_str str -> if String.length str > String.length max_str then str else max_str) h t)

(* Test Cases *)
let test1 = longest [] = None (* [] *)
let test2 = longest ["a"; "b"; "c"] = Some("a") (* ["a"; "b"; "c"] *)
let test3 = longest ["a"; "bb"; "ccc"] = Some("ccc") (* ["a"; "bb"; "ccc"] *)


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
