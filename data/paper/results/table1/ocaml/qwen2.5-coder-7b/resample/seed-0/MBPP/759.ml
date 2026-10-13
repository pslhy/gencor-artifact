(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let dot_count = ref 0 in
  let is_dot c = c = '.' in
  let is_number str = 
    List.for_all is_digit (String.to_list str) && 
    (!dot_count <= 1) in
  let rec check i = 
    if i >= String.length num then true
    else if is_dot num.[i] then (
      incr dot_count;
      check (i + 1))
    else if is_digit num.[i] then check (i + 1)
    else false in
  check 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let dot_count = ref 0 in
  let is_dot c = c = '.' in
  let is_number str = 
    List.for_all is_digit (String.to_list str) && 
    (!dot_count <= 1) in
  let rec check i = 
    if i >= String.length num then true
    else if is_dot num.[i] then (
      incr dot_count;
      check (i + 1))
    else if is_digit num.[i] then check (i + 1)
    else false in
  check 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let dot_count = ref 0 in
  let is_dot c = c = '.' in
  let is_number str = 
    List.for_all is_digit (str |> Bytes.of_string |> Bytes.to_seq |> Seq.filter is_digit |> Seq.length <= 1) in
  let rec check i = 
    if i >= String.length num then true
    else if is_dot num.[i] then (
      incr dot_count;
      check (i + 1))
    else if is_digit num.[i] then check (i + 1)
    else false in
  check 0

