(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if (shift > len) then String.rev str_x
  else
    let rec helper l = 
      match l with 
      | [] -> []
      | _::[] -> l
      | h::tail -> (List.nth l (shift))::(helper tail)
    in  
    let l = List.of_seq (String.to_seq str_x) in
    String.concat "" (List.map string_of_char (helper l))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:25: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if shift > len then String.rev str_x
  else
    let rec helper l = 
      match l with 
      | [] -> []
      | _::[] -> l
      | h::tail -> (List.nth l (shift))::(helper tail)
    in  
    let l = List.of_seq (String.to_seq str_x) in
    String.concat "" (List.map string_of_char (helper l))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if shift > len then String.rev str_x
  else
    let rec helper l = 
      match l with 
      | [] -> []
      | _::[] -> l
      | h::tail -> (List.nth l (List.length l - (shift % List.length l)))::(helper tail)
    in  
    let l = List.of_seq (String.to_seq str_x) in
    String.concat "" (List.map string_of_char (helper l))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if shift > len then 
    let reversed_str_x = String.to_list str_x |> List.rev |> String.of_char_list in
    reversed_str_x 
  else
    let shifted_chars = List.init len (fun i ->
        str_x.[(i + len - shift) mod len]
      ) in
    String.of_char_list shifted_chars

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:62: Unbound value "String.of_char_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if shift > len then 
    String.init len (fun i -> str_x.[(len - i - 1 + shift) mod len])
  else
    String.init len (fun i -> str_x.[(i + shift) mod len])

