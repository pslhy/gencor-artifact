let rec long_words (n : int) (str : string) : string list =
  if n < 1 then [] else
  match str with
  | "" -> []
  | _ ->
      let h = String.get str 0 in
      let rest = String.sub str 1 (String.length str - 1) in
      if String.length h > n then h :: [] else
      long_words n rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
