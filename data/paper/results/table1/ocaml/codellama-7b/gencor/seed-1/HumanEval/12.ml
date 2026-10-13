
let rec longest (strings : string list) : string option =
match strings with
| [] -> None
| [string] -> Some string
| current :: rest ->
match longest rest with
| Some longest -> if String.length current > String.length longest then Some current else Some longest
| None -> Some current

let test_longest () =
let input = ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
in
let expected = Some "g"
in
let result = longest input
in
assert (result = expected)

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
