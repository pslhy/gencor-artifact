let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | _ -> let space = String.index_from s 0 ' ' in
    (String.sub s (space + 1) (String.length s - space - 1)) ^ " " ^ (reverse_words (String.sub s 0 space))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
