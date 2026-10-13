let rec solve (s : string) : string = 
  let rec helper (s : string) (acc : string) : string = 
    match s with
    | "" -> acc
    | c :: cs -> 
        if ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') then
          helper cs (String.make 1 (if Char.is_lower c then Char.uppercase_ascii c else Char.lowercase_ascii c) ^ acc)
        else
          helper cs (c ^ acc)
  in
  if String.for_all (fun c -> not (Char.is_alphabetic c)) s then
    String.rev s
  else
    helper s ""


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
