let rec find_adverb_position (text : string) :  int * int * string = 
    let text = text.split with Regex.regexp "[\\(\\);\\.,<\\>\\]?\\Complex]*" in
    let res = List.find_opt (fun x -> String.equal x "adverb") text in
    match res with
    | None -> None
    | Some word -> word.index + 1, word.value


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
