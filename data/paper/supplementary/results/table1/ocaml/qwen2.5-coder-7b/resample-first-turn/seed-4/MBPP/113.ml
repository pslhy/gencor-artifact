let rec check_integer (text : string) : bool = 
  let clean_text = String.trim text in
  if clean_text = "" then false
  else
    let rec aux chars =
      match chars with
      | [] -> true
      | '+' :: rest -> aux rest
      | '-' :: rest -> aux rest
      | '0' :: rest -> aux rest
      | '1' :: rest -> aux rest
      | '2' :: rest -> aux rest
      | '3' :: rest -> aux rest
      | '4' :: rest -> aux rest
      | '5' :: rest -> aux rest
      | '6' :: rest -> aux rest
      | '7' :: rest -> aux rest
      | '8' :: rest -> aux rest
      | '9' :: rest -> aux rest
      | _ -> false
    in aux (String.to_list clean_text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
