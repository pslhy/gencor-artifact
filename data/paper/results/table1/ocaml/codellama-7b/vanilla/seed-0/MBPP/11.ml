let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" || ch = "" then s else
    let first_occur = String.index_exn s ch in
    let last_occur = String.rindex_exn s ch in
    let str_first_occur = String.sub s 0 (first_occur + 1) in
    let str_last_occur = String.sub s (last_occur - String.length ch + 1) (String.length s - last_occur) in
    remove_Occ str_first_occur ch ^ remove_Occ str_last_occur ch


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
