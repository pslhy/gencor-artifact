let rec reverse_words (s : string) : string =
  let is_space = function ' ' | '\t' | '\n' -> true | _ -> false in
  let is_not_space = function ' ' | '\t' | '\n' -> false | _ -> true in
  let rec rev (acc : string list) (s : string) =
    match s with
    | "" -> String.concat " " (List.rev acc)
    | s' ->
      if is_space s' then
        rev [] s'
      else
        rev (s' :: acc) (String.sub s' 1 (String.length s' - 1))
  in
  rev [] s
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
