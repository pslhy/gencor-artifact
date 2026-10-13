
let rec solve (s : string) : string =
  let len = String.length s in
  let rec loop i result =
    if i = len then String.of_seq result
    else
      let c = String.get s i in
      if Char.code c > 64 && Char.code c < 91 then loop (i+1) (Seq.Cons (Char.chr (Char.code c + 32)) )
      else if Char.code c > 96 && Char.code c < 123 then loop (i+1) (Seq.Cons (Char.chr (Char.code c - 32)) )
      else loop (i+1) (Seq.Cons c )
  in
  let s' = loop 0 (Seq.empty ()) in
  if String.contains_from s 0 "\"" then s'
  else String.sub s' 0 (String.length s')

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
