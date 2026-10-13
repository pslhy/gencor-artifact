
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | s -> 
      let space_pos = String.index_opt s ' ' in
      match space_pos with
      | Some pos -> 
          let (front, back) = String.split_on_char ' ' s in
          back ^ " " ^ reverse_words front
      | None -> s

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
