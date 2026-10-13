
let rec find_adverb_position (text : string) :  int * int * string = 
  let words = String.split_on_char ' ' text in
  let rec find pos words =
    match words with
    | [] -> (-1, -1, "")
    | w::ws ->
       let len = String.length w in
       if w.[len-1] = 'y' && w.[len-2] = 'l'
       then (pos, pos + len - 1, w)
       else find (pos + len + 1) ws
  in
  find 0 words

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
