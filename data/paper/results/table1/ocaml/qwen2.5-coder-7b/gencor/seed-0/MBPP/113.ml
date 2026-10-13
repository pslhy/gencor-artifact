
let rec check_integer (text : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_sign c = c = '+' || c = '-' in
  let is_empty s = s = "" in
  
  let trim s =
    let rec trim_left s = if is_empty s then s else if is_digit (String.get s 0) || is_sign (String.get s 0) then s else trim_left (String.sub s 1 (String.length s - 1))
    and trim_right s = if is_empty s then s else if is_digit (String.get (String.sub s 0 (String.length s - 1)) 0) || is_sign (String.get (String.sub s 0 (String.length s - 1)) 0) then s else trim_right (String.sub s 0 (String.length s - 1))
    in trim_left (trim_right s)
  in
  
  let rec check_rest start len =
    if len = 0 then true
    else if is_digit (String.get text start) then check_rest (start + 1) (len - 1)
    else false
  in
  
  if is_empty text then false
  else
    let trimmed_text = trim text in
    if not (is_empty trimmed_text) then
      if is_digit (String.get trimmed_text 0) || is_sign (String.get trimmed_text 0) then check_rest 0 (String.length trimmed_text - 1)
      else false
    else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
