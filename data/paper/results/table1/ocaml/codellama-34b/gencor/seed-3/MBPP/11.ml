
let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" then ""
  else
    (if s.[0] != ch then s else s.[1..(String.length s - 2)]) ::
    (if s.[String.length s - 1] != ch then [] else s.[0..(String.length s - 2)])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
