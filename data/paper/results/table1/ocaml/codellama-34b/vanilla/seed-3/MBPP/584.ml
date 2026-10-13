let rec find_adverbs (text : string) : string =
  if String.length text <= 2 ||
  (String.length text >= 3 && text.[String.length text - 2] <> 'l' && text.[String.length text - 1] <> 'y') then
    None
  else
    let rec search (cnt : int) (i : int) =
      if i >= String.length text then
        None
      else if text.[i] = ' ' || text.[i] = '.' || text.[i] = '!' || text.[i] = '?' then
        search (cnt + 1) (i + 1)
      else if text.[i] = 'l' && text.[i + 1] = 'y' then
        Some (cnt, i)
      else
        search cnt (i + 1)
    in
    search 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
