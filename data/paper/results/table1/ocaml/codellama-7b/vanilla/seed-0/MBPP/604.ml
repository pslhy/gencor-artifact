let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | _ ->
    let reverse (s : string) : string = String.concat "" (List.rev (String.explode s)) in
    let word = String.rfind_from s 0 ' ' (-1) in
    let tail = String.sub s 0 word in
    let head = String.sub s (word + 1) (String.length s - word - 1) in
    reverse_words tail ^ reverse head ^ " " ^ reverse_words head;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
