let rec find_adverb_position (text : string) :  int * int * string = 
  let rec check (text: string) (start: int) : int * int * string = 
    if String.length text <= start then (start, start, text)
    else
      match String.sub text start 2 with
      | "ly" -> (start, start + 1, "ly")
      | _ -> check (String.sub text (start + 1) ((String.length text) - (start + 1))) (start + 1)
  in check text 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
