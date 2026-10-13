let rec remove_Occ (s : string) (ch : string) : string =
  let len = String.length s in
  if len = 0 then s
  else if String.get s 0 = ch then remove_Occ (String.sub s 1 (len-1)) ch
  else if String.get s (len - 1) = ch then remove_Occ (String.sub s 0 (len-1)) ch
  else s

(* Examples:
  remove_Occ "hello" "l"
  -> "heo" (* as the first and the last 'l' are removed *)

  remove_Occ "hello world" "o"
  -> "hell wrld" (* as the first and the last 'o' are removed *)

  remove_Occ "hello world" "x"
  -> "hello world" (* as there are no 'x' in the string, nothing is removed *)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
