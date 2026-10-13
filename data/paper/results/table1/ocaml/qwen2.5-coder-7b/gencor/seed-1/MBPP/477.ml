
let rec is_lower (string : string) : string = 
  if String.length string = 0 then string
  else
    let rec loop (chars : char list) : char list =
      match chars with
      | [] -> []
      | h::t -> (if Char.compare h (Char.lowercase_ascii h) = 0 then h else Char.lowercase_ascii h)::loop t
    in
    String.of_seq (List.to_seq (loop (String.to_seq string)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
