let rec find_adverb_position (text : string) :  int * int * string =
  let len = String.length text in
  let rec loop i start =
    if i = len then raise Not_found
    else if text.[i] = ' ' && i <> start then 
      if String.sub text start (i - start) = "quickly" ||
         String.sub text start (i - start) = "happily" ||
         String.sub text start (i - start) = "usually"
      then (start, i, String.sub text start (i - start))
      else loop (i + 1) (i + 1) 
    else loop i start in
  loop 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
