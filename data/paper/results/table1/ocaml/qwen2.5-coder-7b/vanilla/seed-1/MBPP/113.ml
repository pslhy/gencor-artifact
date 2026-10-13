let rec check_integer (text : string) : bool = 
  let text = String.trim text in
  match text with
  | "" -> false
  | '+' | '-' -> check_integer (String.sub text 1 (String.length text - 1))
  | _ -> 
      let valid_chars = String.for_all (fun c -> c = '+' || c = '-' || (c >= '0' && c <= '9')) text in
      if valid_chars then try let _ = int_of_string text in true with _ -> false else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
