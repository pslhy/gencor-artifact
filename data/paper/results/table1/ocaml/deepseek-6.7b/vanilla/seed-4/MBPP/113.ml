let rec check_integer (text : string) : bool =
  let len = String.length text in
  if len = 0 then false
  else if Char.code text.[0] = (Char.code '+') || Char.code text.[0] = (Char.code '-') then
    let sub_str = String.sub text 1 (len - 1) in
    check_rest sub_str
  else check_rest text

and check_rest (sub_txt : string) : bool =
  let len = String.length sub_txt in
  if len = 0 then true
  else if (Char.code sub_txt.[0] >= Char.code '0' && Char.code sub_txt.[0] <= Char.code '9') then
    check_rest (String.sub sub_txt 1 (len - 1))
  else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
