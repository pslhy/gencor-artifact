let rec find_adverb_position (text : string) :  int * int * string =
    let words = List.map String.trim (String.split_on_char ' ' text) in
    let first_adverb = List.find (fun word -> word.[0] = '.' && word.[String.length word - 1] = '.') words in
    let index = List.find_index (fun word -> word = first_adverb) words in
    (index, index + String.length first_adverb, first_adverb)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
