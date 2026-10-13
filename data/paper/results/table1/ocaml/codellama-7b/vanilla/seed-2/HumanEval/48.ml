let rec is_palindrome (text : string) : bool =
  match String.length text with
  | 0 -> true
  | _ ->
      let left = String.sub text 0 (String.length text / 2) in
      let right = String.sub text (String.length text / 2) (String.length text / 2) in
      if left = right then
        is_palindrome left
      else
        false
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Checks if given string is a palindrome *)
(*     >>> is_palindrome "" *)
(*     true *)
(*     >>> is_palindrome "aba" *)
(*     true *)
(*     >>> is_palindrome "aaaaa" *)
(*     true *)
(*     >>> is_palindrome "zbcd" *)
(*     false *)
