(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
let rec is_lower (string : string) : string = 
  if String.length string = 0 then string
  else
    let rec loop (chars : char list) : char list =
      match chars with
      | [] -> []
      | h::t -> (if Char.compare h (Char.lowercase h) = 0 then h else Char.lowercase h)::(loop t)
    in 
    String.concat "" (loop (String.to_seq string |> List.of_seq))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:37: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string = 
  if String.length string = 0 then string
  else
    let rec loop (chars : char list) : char list =
      match chars with
      | [] -> []
      | h::t -> (if h = Char.lowercase h then h else Char.lowercase h)::(loop t)
    in 
    String.concat "" (loop (String.to_seq string |> List.of_seq))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:25: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string = 
  if String.length string = 0 then string
  else
    let rec loop (chars : char list) : char list =
      match chars with
      | [] -> []
      | h::t -> (if h = Char.lowercase h then h else Char.lowercase h)::(loop t)
    in 
    String.concat "" (List.map Char.lowercase (String.to_seq string |> List.of_seq))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:25: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string = 
  if String.length string = 0 then string
  else
    let rec loop (chars : char list) : char list =
      match chars with
      | [] -> []
      | h::t -> (if Char.lowercase_ascii h = h then h else Char.lowercase_ascii h)::(loop t)
    in 
    String.concat "" (loop (String.to_seq string |> List.of_seq))

