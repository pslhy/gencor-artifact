let rec text_lowercase_underscore (text : string) : bool = 
  let is_lowercase c = c >= 'a' && c <= 'z' in
  let rec check lst = match lst with
    | [] -> false
    | '_' :: [] -> true
    | '_' :: tl -> check tl
    | h :: tl ->
      if not (is_lowercase h) then false
      else check tl
  in check (List.of_seq (String.to_seq text))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
