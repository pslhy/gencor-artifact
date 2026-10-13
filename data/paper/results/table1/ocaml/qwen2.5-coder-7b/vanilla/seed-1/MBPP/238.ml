let rec number_of_substrings (str : string) : int = 
  let len = String.length str in
  let rec helper acc i =
    if i >= len then acc
    else
      let acc' = acc + (len - i) in
      helper acc' (i + 1)
  in
  if len = 0 then 0 else helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
