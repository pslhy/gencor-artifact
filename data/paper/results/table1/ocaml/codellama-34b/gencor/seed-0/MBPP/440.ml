
let rec find_adverb_position (text : string) :  int * int * string =
  let words = String.split_on_char ' ' text in
  match words with
  | [] -> (-1, -1, "")
  | word::_ when word = "adverb" -> (0, String.length word, word)
  | _::tl -> find_adverb_position tl

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
