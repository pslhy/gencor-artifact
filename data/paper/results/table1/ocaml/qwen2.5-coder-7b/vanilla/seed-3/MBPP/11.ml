let rec remove_Occ (s : string) (ch : string) : string = 
  let rec helper (s : string) (ch : string) (first : bool) (acc : string) : string =
    if s = "" then acc
    else if String.sub s 0 1 = ch then
      if first then helper (String.sub s 1 ((String.length s) - 1)) ch false acc
      else helper (String.sub s 1 ((String.length s) - 1)) ch true (acc ^ ch)
    else helper (String.sub s 1 ((String.length s) - 1)) ch first (acc ^ (String.sub s 0 1))
  in helper s ch true ""



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
