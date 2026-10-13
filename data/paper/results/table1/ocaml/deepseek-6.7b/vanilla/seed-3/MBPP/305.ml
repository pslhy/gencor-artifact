let rec start_withp (words : string list) :  string * string =
  match words with
  | [] -> ("", "")
  | word::tail ->
       if String.get word 0 = 'p' then
          (word, (match start_withp tail with ("", tail_result) -> tail_result | (word2, _) -> word2))
       else
          start_withp tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
