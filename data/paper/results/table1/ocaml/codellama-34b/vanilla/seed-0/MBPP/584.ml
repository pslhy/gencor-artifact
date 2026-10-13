let rec find_adverbs (text : string) : string =
  let rec find_adverbs text pos =
    try
      let i = String.index_of text 'ly' in
      if is_adverb text.[i-1] then
        [(text.[i-1], text.[i-2])]
      else
        []
    with
      Not_found -> []
  in
  "The first adverb in the string is " ^ find_adverbs text 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
