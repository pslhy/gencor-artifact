let rec solve (s : string) : string = 
  let rec helper (chars : char list) : char list =
    match chars with
    | [] -> []
    | ch :: rest when Char.is_alpha ch ->
        if Char.is_uppercase ch then Char.lowercase_ascii ch :: helper rest
        else Char.uppercase_ascii ch :: helper rest
    | ch :: rest -> ch :: helper rest
  in
  let chars = String.to_list s in
  let result = helper chars in
  if List.for_all (fun ch -> not (Char.is_alpha ch)) result then 
    List.rev_map (fun ch -> if ch = '_' then ch else if ch >= 'a' && ch <= 'z' then ch - 32 else ch + 32) chars
  else
    List.rev result


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
