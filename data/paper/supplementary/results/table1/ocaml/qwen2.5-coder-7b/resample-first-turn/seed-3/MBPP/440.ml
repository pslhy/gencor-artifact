let rec find_adverb_position (text : string) :  int * int * string = 
  let words = Str.split (Str.regexp " ") text in
  let rec find_word index = 
    match words with
    | [] -> (-1, -1, "")
    | w::ws -> 
        if Str.string_match (Str.regexp "\\<adverb\\>") w 0 then 
          (index, index + (String.length w) - 1, w)
        else 
          find_word (index + (String.length w) + 1)
  in
  find_word 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
