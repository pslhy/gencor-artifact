let rec remove_odd (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ -> let char_list = Char.escaped str1.[0] in
         let output = if (Char.code char_list) mod 2 = 0 then char_list else "" in
         output ^ remove_odd (String.sub str1 1 ((String.length str1) -1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
