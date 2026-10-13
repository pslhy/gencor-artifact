
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let dot_count = ref 0 in
  let is_dot c = c = '.' in
  let is_number str = 
    List.for_all is_digit (String.to_seq (String.trim str)) in
  let rec check_chars rest = 
    match rest with 
    | [] -> true 
    | x :: xs -> 
      if is_dot x then 
        (dot_count := !dot_count + 1;
         if !dot_count > 1 then false else check_chars xs)
      else if not (is_digit x) then false 
      else check_chars xs in
  if is_number num &&(check_chars (String.to_seq num)) then 
    true 
  else 
    false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
