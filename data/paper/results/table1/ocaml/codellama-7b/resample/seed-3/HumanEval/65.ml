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
  if shift > String.length (string_of_int x) then
    let s = string_of_int x in
    let rev = String.concat "" (Array.to_list (Array.rev (String.to_array s))) in
    rev
  else
    let s = string_of_int x in
    let head = String.sub s 0 shift in
    let tail = String.sub s shift (String.length s - shift) in
    head ^ tail

let () =
  let num = 12 in
  let shift = 1 in
  print_endline (circular_shift num shift)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:48: Unbound value "Array.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let s = string_of_int x in
  if shift > String.length s then
    let rev = String.concat "" (Array.to_list (Array.rev (String.to_array s))) in
    rev
  else
    let head = String.sub s 0 shift in
    let tail = String.sub s shift (String.length s - shift) in
    head ^ tail

let () =
  let num = 12 in
  let shift = 1 in
  print_endline (circular_shift num shift)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:48: Unbound value "Array.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let s = string_of_int x in
  if shift > String.length s then
    let rev = String.to_list s in
    List.rev rev
  else
    let head = String.sub s 0 shift in
    let tail = String.sub s shift (String.length s - shift) in
    head ^ tail

let () =
  let num = 12 in
  let shift = 1 in
  print_endline (circular_shift num shift)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let s = string_of_int x in
  if shift > String.length s then
    let rev = String.to_list s in
    List.rev rev
  else
    let head = String.sub s 0 shift in
    let tail = String.sub s shift (String.length s - shift) in
    head ^ tail

let () =
  let num = 12 in
  let shift = 1 in
  print_endline (circular_shift num shift)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
  let s = string_of_int x in
  if shift > String.length s then
    let rev = String.rev s in
    let list = String.to_list s in
    List.rev list
  else
    let head = String.sub s 0 shift in
    let tail = String.sub s shift (String.length s - shift) in
    head ^ tail

let () =
  let num = 12 in
  let shift = 1 in
  print_endline (circular_shift num shift)

