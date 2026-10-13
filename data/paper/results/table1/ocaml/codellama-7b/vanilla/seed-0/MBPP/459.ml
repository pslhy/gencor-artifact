let rec remove_uppercase (str1 : string) : string =
  if str1.[0] <> 'A' then str1
  else
    match String.index_opt str1 (fun c -> c <> 'A' && c <> 'Z') with
    | Some i -> remove_uppercase (String.sub str1 0 i :: String.sub str1 (i + 1) (String.length str1 - i - 1))
    | None -> ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
