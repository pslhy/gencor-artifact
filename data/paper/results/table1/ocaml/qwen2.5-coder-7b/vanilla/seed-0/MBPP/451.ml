let rec remove_whitespaces (text1 : string) : string = 
  let is_whitespace c = Char.equal c ' ' in
  if String.length text1 = 0 then ""
  else if is_whitespace (String.get text1 0) then remove_whitespaces (String.sub text1 1 (String.length text1 - 1))
  else 
    let len = String.length text1 in
    let rec find_first_non_whitespace index =
      if index = len then len
      else if not (is_whitespace (String.get text1 index)) then index
      else find_first_non_whitespace (index + 1)
    in
    let non_whitespace_index = find_first_non_whitespace 0 in
    let non_whitespace_part = String.sub text1 non_whitespace_index (len - non_whitespace_index) in
    non_whitespace_part ^ remove_whitespaces non_whitespace_part


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
