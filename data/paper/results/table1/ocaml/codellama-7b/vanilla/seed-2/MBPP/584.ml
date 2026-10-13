let rec find_adverbs (text : string) : string =
  match text with
  | "" -> []
  | _ ->
    let pos = String.length text - 2 in
    if String.sub text pos 3 = "ly" then
      [text]
    else
      find_adverbs (String.sub text 0 (String.length text - 1))

let first_adverb (text : string) : string * int * int =
  let pos = 0 in
  let result = find_adverbs text in
  match result with
  | [] -> ("", -1, -1)
  | h :: t -> (h, pos, pos + String.length h - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
