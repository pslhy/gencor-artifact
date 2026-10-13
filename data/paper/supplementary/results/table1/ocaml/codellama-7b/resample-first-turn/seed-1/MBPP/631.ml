let rec replace_spaces (text : string) : string =
  let is_space = function ' ' -> true | _ -> false in
  match String.contains text ' ' with
  | true ->
    let under_scored = replace_spaces (String.trim text) in
    under_scored
      .replace_char (~pos:0, ~len:under_scored.length)
      ~by:(fun _ -> '_')
  | false ->
    let spaced = String.split_on_char ' ' text |> String.concat " " in
    spaced
      .replace_char (~pos:0, ~len:spaced.length)
      ~by:(fun _ -> ' ')


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
