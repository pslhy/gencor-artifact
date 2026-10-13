(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num_string = string_of_int num_int then
      true 
    else 
      let num_parts = String.split_on_char '.' num in
      match num_parts with
      | [integer; decimal] -> 
          (String.length decimal = 2) && 
          (List.for_all Char.is_digit (List.rev (String.to_list integer)))
      | _ -> false
  with 
  | _ -> false;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:8: Unbound value "num_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num = string_of_int num_int then
      true 
    else 
      let num_parts = String.split_on_char '.' num in
      match num_parts with
      | [integer; decimal] -> 
          (String.length decimal = 2) && 
          (List.for_all Char.is_digit (List.rev (String.to_list integer)))
      | _ -> false
  with 
  | _ -> false;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:25: Unbound value "Char.is_digit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num = string_of_int num_int then
      true 
    else 
      let num_parts = String.split_on_char '.' num in
      match num_parts with
      | [integer; decimal] -> 
          (String.length decimal = 2) && 
          (List.for_all (fun c -> ('0' <= c) && (c <= '9')) (List.rev (String.to_list integer)))
      | _ -> false
  with 
  | _ -> false;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:72: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num = string_of_int num_int then
      true 
    else 
      let num_parts = String.split_on_char '.' num in
      match num_parts with
      | [integer; decimal] -> 
          (String.length decimal = 2) && 
          (List.for_all (fun c -> ('0' <= c) && (c <= '9')) (List.rev (String->char_list integer)))
      | _ -> false
  with 
  | _ -> false;;
``
(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:78: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  try
    let num_float = float_of_string num in
    let num_int = int_of_float num_float in
    if num = string_of_int num_int then
      true 
    else 
      let num_parts = String.split_on_char '.' num in
      match num_parts with
      | [integer; decimal] -> 
          (String.length decimal = 2) && 
          (List.for_all (fun c -> ('0' <= c) && (c <= '9')) (List.rev (String->char_list integer)))
      | _ -> false
  with 
  | _ -> false;;