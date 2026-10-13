let rec remove_Occ (s : string) (ch : string) : string =
  match s with
  | "" -> ""
  | str when str.[0] = ch.[0] ->
      if String.length s = 1 || String.sub s 1 (String.length s - 1) = ch then
        ""
      else 
        str
  | _::s' -> str.[0] ^ remove_Occ (String.sub s 1 (String.length s - 1)) ch

let remove_first_and_last_Occ s ch = remove_Occ (remove_Occ s ch) ch


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
