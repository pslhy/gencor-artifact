(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
let rec string_xor (a : string) (b : string) : string = 
  let rec xor_helper (a : char list) (b : char list) (res : char list) : char list =
    match (a, b) with
    | ([], []) -> List.rev res
    | (a1::a2, b1::b2) -> xor_helper a2 b2 (char_xor a1 b1 :: res)
    | _ -> failwith "Input strings must be of the same length"
  and char_xor a b : char =
    if a = b then '0' else '1'
  in
  xor_helper (String.to_list a) (String.to_list b) []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string = 
  let rec xor_helper (a : char list) (b : char list) (res : char list) : char list =
    match (a, b) with
    | ([], []) -> List.rev res
    | (a1::a2, b1::b2) -> xor_helper a2 b2 (char_xor a1 b1 :: res)
    | _ -> failwith "Input strings must be of the same length"
  and char_xor a b : char =
    if a = b then '0' else '1'
  in
  xor_helper (Array.to_list (String.to_array a)) (Array.to_list (String.to_array b)) []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:30: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string = 
  let rec xor_helper (a : char list) (b : char list) (res : char list) : char list =
    match (a, b) with
    | ([], []) -> List.rev res
    | (a1::a2, b1::b2) -> xor_helper a2 b2 (char_xor a1 b1 :: res)
    | _ -> failwith "Input strings must be of the same length"
  and char_xor a b : char =
    if a = b then '0' else '1'
  in
  xor_helper (String.list_of_chars a) (String.list_of_chars b) []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "String.list_of_chars" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string = 
  let xor_helper a b res =
    if a = "" && b = "" then List.rev res
    else
      let xor_char = if a.[0] = b.[0] then '0' else '1' in
      xor_helper (String.sub a 1 (String.length a - 1)) (String.sub b 1 (String.length b - 1)) (xor_char :: res)
  in
  xor_helper a b []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:7: Unbound value "xor_helper" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string = 
  let rec xor_helper a b res =
    if a = "" && b = "" then List.rev res
    else
      let xor_char = if a.[0] = b.[0] then '0' else '1' in
      xor_helper (String.sub a 1 (String.length a - 1)) (String.sub b 1 (String.length b - 1)) (xor_char :: res)
  in
  xor_helper a b []

