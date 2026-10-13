
let rec replace_spaces (text : string) : string =
  let is_space = function ' ' -> true | _ -> false in
  match String.contains text ' ' with
  | true ->
    let under_scored = replace_spaces (String.trim text) in
    under_scored
      .[~-1..(String.length under_scored - 1)]
      .[~-1..(String.length under_scored - 1)]
      .[0..(String.length under_scored - 1)]
  | false -> text

let rec replace_underscores (text : string) : string =
  let is_underscore = function '_' -> true | _ -> false in
  match String.contains text '_' with
  | true ->
    let space_replaced = replace_underscores (String.trim text) in
    space_replaced
      .[~-1..(String.length space_replaced - 1)]
      .[~-1..(String.length space_replaced - 1)]
      .[0..(String.length space_replaced - 1)]
  | false -> text

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
