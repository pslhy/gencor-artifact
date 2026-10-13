let rec find_adverb_position (text : string) :  int * int * string =
  let text_length = String.length text in
  let rec helper (pos : int) : int * int * string =
    if pos >= text_length then (-1, -1, "")
    else 
      let word = String.sub text pos (text_length - pos) in
      if word = "" then (-1, -1, "")
      else
        match word.[0] with
        | 'a' | 'e' | 'o' | 'i' | 'u' -> (pos, String.length word, word)
        | _ -> helper (pos + 1)
  in helper 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
