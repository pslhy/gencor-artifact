let rec remove_Occ (s : string) (ch : string) : string = 
  let rec find_index start len =
    if start >= len then -1 else
      if String.sub s start 1 = ch then start else find_index (start + 1) len
  in
  let rec remove_first start len pos =
    if pos = -1 then s else
      String.concat "" [String.sub s 0 pos; String.sub s (pos + 1) (len - pos - 1)]
  in
  let pos1 = find_index 0 (String.length s) ch in
  let pos2 = find_index pos1 (String.length s) ch in
  remove_first pos1 (String.length s) pos2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
