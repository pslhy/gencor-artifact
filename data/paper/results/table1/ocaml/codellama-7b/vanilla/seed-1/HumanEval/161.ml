let rec solve (s : string) : string =
match s with
| [] -> failwith "String cannot be empty"
| _ ->
   let rev_s = String.rev s in
   let rec aux i acc =
      if i = String.length s then
         acc
      else
         match Sys.get s.[i] with
         | 'a'..'z' -> String.make 1 (Char.upper s.[i]) acc
         | 'A'..'Z' -> String.make 1 (Char.lower s.[i]) acc
         | _ -> aux (i + 1) acc
   in
   aux 0 rev_s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
