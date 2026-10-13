
let rec find_adverbs (text : string) : string =
  let rec find_adverbs text pos =
    try
      let i = String.index_from text pos 'l' in
      let j = String.index_from text (i + 1) 'y' in
      Some (String.sub text pos (j - pos), i, j)
    with Not_found -> None
  in
  if String.is_valid_utf_8 text then find_adverbs text 0 else raise (Invalid_argument "find_adverbs")

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
