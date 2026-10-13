let rec find_adverb_position (text : string) :  int * int * string = 
  let is_adverb (word : string) : bool = 
    List.mem word ["quickly"; "slowly"; "loudly"; "quietly"] in
  let rec aux (start : int) (text : string) : int * int * string = 
    match String.index_opt ',' text with
      | Some pos -> let word = String.sub text start (pos - start) in
                   if is_adverb word then 
                       (start, start + String.length word, word)
                   else aux (pos + 1) text
      | None -> if is_adverb (String.sub text start (String.length text)) then 
                   (start, start + String.length text, String.sub text start (String.length text)) 
                 else (-1, -1, "") in
  aux 0 text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
