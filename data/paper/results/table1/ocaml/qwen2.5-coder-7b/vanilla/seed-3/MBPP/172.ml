let rec count_occurance (s : string) : int = 
  let rec helper (s : string) (count : int) : int = 
    try
      let pos = String.index s "std" in
      helper (String.sub s (pos + 3) ((String.length s) - (pos + 3))) (count + 1)
    with
      Not_found -> count
  in helper s 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
