let rec remove_Occ (s : string) (ch : string) : string = 
  let rec find_first idx =
    if idx >= String.length s then -1
    else if String.sub s idx 1 = ch then idx
    else find_first (idx + 1)
  in
  let rec find_last idx =
    if idx < 0 then -1
    else if String.sub s idx 1 = ch then idx
    else find_last (idx - 1)
  in
  let first_idx = find_first 0 in
  let last_idx = find_last (String.length s - 1) in
  if first_idx = -1 || last_idx = -1 then s
  else
    let first_val = if first_idx = last_idx then first_idx + 1 else first_idx in
    let len = String.length s in
    String.sub s 0 first_val ^
    String.sub s (first_idx + 1) (last_idx - first_idx - 1) ^
    String.sub s (last_idx + 1) (len - last_idx - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
