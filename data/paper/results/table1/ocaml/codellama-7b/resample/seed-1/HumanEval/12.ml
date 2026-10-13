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
| [string] -> Some string
| current :: rest ->
match longest rest with
| Some longest -> if String.length current > String.length longest then Some current else Some longest
| None -> Some current

let test_longest () =
let input = ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
let expected = Some("g")
let result = longest input
assert (result = expected)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec longest (strings : string list) : string option =
match strings with
| [] -> None
| (current : string) :: rest ->
  match longest rest with
  | Some longest -> if String.length current > String.length longest then Some current else Some longest
  | None -> Some current

let test () =
  let input = ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
  let expected = Some("g")
  let result = longest input
  assert (result = expected)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec longest (strings : string list) : string option =
match strings with
| [] -> None
| current :: rest ->
  match longest rest with
  | Some longest -> if String.length current > String.length longest then Some current else Some longest
  | None -> Some current

