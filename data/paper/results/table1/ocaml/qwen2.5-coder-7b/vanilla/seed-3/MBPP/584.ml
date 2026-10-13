let rec find_adverbs (text : string) : string = int * int list =
  let rec search pos =
    match String.index_from_opt "ly" text pos with
    | None -> (-1, [])
    | Some start ->
        let end_pos = start + 2 in
        let rest = String.sub text end_pos (String.length text - end_pos) in
        let rest_adverb, rest_positions = search (end_pos + 1) in
        (String.sub text start (end_pos - start),
         start :: rest_positions)
  in
  search 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
