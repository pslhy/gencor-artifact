(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
let rec reverse_words (s : string) : string =
  let words = String.split_on_char ' ' s in
  let rev_words = List.map (fun x -> String.rev x) words in
  String.concat " " rev_words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:38: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  let rec reverse_helper (s : string) (acc : string) : string =
    match s with
    | "" ->
      acc
    | s :: tl ->
      reverse_helper tl (s :: acc)
  in
  let rev_s = List.rev (String.split_on_char ' ' s) in
  String.concat " " (List.map rev_s)

