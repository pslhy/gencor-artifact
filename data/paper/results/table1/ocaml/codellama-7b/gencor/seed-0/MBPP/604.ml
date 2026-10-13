
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | _ ->
    let reverse (s : string) : string = String.concat "" (List.rev (String.split_on_char ' ' s)) in
    reverse_words (String.sub s (String.index s ' ' + 1) (String.length s - (String.index s ' ' + 1))) ^ " " ^ reverse (String.sub s 0 (String.index s ' '))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
