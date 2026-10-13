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
    if shift >= len then
        str_x |> String.to_list |> List.rev |> List.to_string
    else
        let first_part = String.sub str_x 0 (len - shift) in
        let second_part = String.sub str_x (len - shift) shift in
        second_part ^ first_part

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Unbound value "List.to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let str_x = string_of_int x in
  let len = String.length str_x in
  if shift >= len then
    str_x |> String.to_list |> List.rev |> String.concat ""
  else
    let first_part = String.sub str_x 0 (len - shift) in
    let second_part = String.sub str_x (len - shift) shift in
    second_part ^ first_part

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:14: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
    let str_x = string_of_int x in
    let len = String.length str_x in
    if shift >= len then
        String.sub str_x (len - shift) shift
    else
        let first_part = String.sub str_x len shift in
        let second_part = String.sub str_x 0 (len - shift) in
        first_part ^ second_part

