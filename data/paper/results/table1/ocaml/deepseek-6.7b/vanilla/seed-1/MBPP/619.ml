let rec move_num (test_str : string) : string =
  match test_str with
  | "" -> test_str
  | a :: rem_str when Char.is_digit a -> move_num rem_str ^ String.make 1 a
  | a :: rem_str -> a ^ move_num rem_str
  | _ -> ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
